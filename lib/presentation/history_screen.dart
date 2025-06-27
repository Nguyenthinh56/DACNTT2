import 'package:fe/presentation/models/recognition_history_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'dart:io';

import 'widgets/bottom_navigation_bar_widget.dart';
import '../../core/app_export.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  static Widget builder(BuildContext context) {
    return const HistoryScreen();
  }

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _selectedIndex = 3;
  User? _currentUser;

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (mounted) {
        setState(() {
          _currentUser = user;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent, // Không cần thiết nếu dùng Stack với Image
      extendBodyBehindAppBar: true, // Cho phép body vẽ dưới AppBar
      extendBody: true, // Cho phép body vẽ dưới BottomNavigationBar
      appBar: AppBar(
        title: const Text('Lịch sử nhận diện', style: TextStyle(color: Colors.black)), // Đổi màu chữ AppBar
        centerTitle: true,
        backgroundColor: Colors.transparent, // Làm AppBar trong suốt
        elevation: 0, // Bỏ đổ bóng
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Đổi màu icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack( // <-- SỬ DỤNG STACK ĐỂ ĐẶT BACKGROUND
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png', // Đảm bảo đường dẫn đúng
              fit: BoxFit.cover, // Đảm bảo ảnh phủ kín màn hình
            ),
          ),
          // Nội dung của màn hình (đặt trong SafeArea để không bị che bởi notch/status bar)
          SafeArea( // <-- ĐẶT NỘI DUNG VÀO SAFEAREA
            child: _currentUser != null
                ? _buildHistoryContent()
                : _buildLoginPrompt(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: _selectedIndex),
    );
  }

  Widget _buildHistoryContent() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('recognitionHistory')
          .where('userId', isEqualTo: _currentUser!.uid)
          .orderBy('timestamp', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Đã xảy ra lỗi: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'Chưa có lịch sử nhận diện nào.\nHãy bắt đầu nhận diện rau củ!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          );
        }

        final historyList = snapshot.data!.docs.map((doc) {
          return RecognitionHistoryModel.fromFirestore(doc);
        }).toList();

        return ListView.builder(
          padding: EdgeInsets.all(16.h),
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            final item = historyList[index];
            return Card(
              margin: EdgeInsets.only(bottom: 12.h),
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.imagePath != null && item.imagePath!.isNotEmpty)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          File(item.imagePath!),
                          width: 80.h,
                          height: 80.h,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            debugPrint("Lỗi tải ảnh cục bộ: $error");
                            return Container(
                              width: 80.h,
                              height: 80.h,
                              color: Colors.grey[200],
                              child: const Icon(Icons.broken_image, color: Colors.grey),
                            );
                          },
                        ),
                      )
                    else
                      Container(
                        width: 80.h,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.image_not_supported, color: Colors.grey),
                      ),
                    SizedBox(width: 16.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.vegetableName,
                            style: TextStyle(
                              fontSize: 18.fSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Thời gian: ${DateFormat('dd/MM/yyyy HH:mm').format(item.timestamp)}',
                            style: TextStyle(
                              fontSize: 14.fSize,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildLoginPrompt() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bạn cần đăng nhập để xem lịch sử nhận diện.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}