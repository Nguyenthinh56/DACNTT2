import 'dart:io';
import 'dart:typed_data';
import 'package:fe/presentation/models/recognition_history_model.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';

import '../../routes/app_routes.dart';
import '../core/utils/navigator_service.dart';
import '../core/utils/vegetable_db_api_service.dart';
import '../theme/theme_helper.dart';
import 'camera_capture_screen.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'models/vegetable_details_model.dart';

class VegetableClassifierScreen extends StatefulWidget {
  final Uint8List? imageBytes;

  const VegetableClassifierScreen({super.key, this.imageBytes});

  @override
  VegetableClassifierScreenState createState() => VegetableClassifierScreenState();
}

class VegetableClassifierScreenState extends State<VegetableClassifierScreen> {
  String _classificationResult = "Kết quả phân loại sẽ hiển thị ở đây";
  bool _isProcessingImage = false;
  int _selectedIndex = 1;

  Uint8List? _currentImageBytes;
  VegetableDetails? _identifiedVegetableDetails;

  @override
  void initState() {
    super.initState();
    if (widget.imageBytes != null) {
      _currentImageBytes = widget.imageBytes; // Khởi tạo biến trạng thái
      _processInitialImage(widget.imageBytes!);
    } else {
      _classificationResult = "Vui lòng chụp hoặc chọn ảnh.";
    }
  }

  void _processInitialImage(Uint8List bytes) {
    try {
      final image = img.decodeImage(bytes);
      if (image != null) {
        setState(() { // <-- Gọi setState để cập nhật UI
          _currentImageBytes = bytes; // <-- Cập nhật biến trạng thái ảnh
          _classificationResult = "Đang phân loại...";
        });
        _classifyImage();
      } else {
        setState(() {
          _classificationResult = "Lỗi xử lý ảnh.";
        });
      }
    } catch (e) {
      setState(() {
        _classificationResult = "Lỗi xử lý ảnh.";
      });
    }
  }

  Future<void> _classifyImage() async {
    setState(() {
      _classificationResult = "Đang nhận diện...";
      _isProcessingImage = true;
      _identifiedVegetableDetails = null;
    });

    try {
      // Sử dụng _currentImageBytes để phân loại
      _identifiedVegetableDetails = await VegetableDbApiService().predictVegetable(_currentImageBytes!);

      setState(() {
        _classificationResult = "Nhận diện thành công: ${_identifiedVegetableDetails!.vietnameseName}";
        _isProcessingImage = false;
      });

      if (_identifiedVegetableDetails != null && _currentImageBytes != null) {
        await _saveRecognitionHistory(_identifiedVegetableDetails!.vietnameseName, _currentImageBytes!);
      }
    } catch (e) {
      debugPrint("Lỗi phân loại: $e");
      setState(() {
        _classificationResult = "Lỗi khi phân loại ảnh.";
        _isProcessingImage = false;
      });
    }
  }

  Future<void> _saveRecognitionHistory(String vegetableName, Uint8List imageBytes) async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        String? savedImagePath;

        final Directory appDocDir = await getApplicationDocumentsDirectory();
        final String appDocPath = appDocDir.path;
        final String fileName = '${DateTime.now().millisecondsSinceEpoch}_${user.uid}.jpg';
        final File localImageFile = File('$appDocPath/$fileName');

        await localImageFile.writeAsBytes(imageBytes);
        savedImagePath = localImageFile.path;

        final newHistoryItem = RecognitionHistoryModel(
          id: '',
          userId: user.uid,
          vegetableName: vegetableName,
          imagePath: savedImagePath,
          timestamp: DateTime.now(),
        );

        await FirebaseFirestore.instance
            .collection('recognitionHistory')
            .add(newHistoryItem.toFirestore());

        debugPrint('Lịch sử nhận diện đã được lưu cục bộ và vào Firestore: ${user.uid} - $vegetableName - $savedImagePath');
      } catch (e) {
        debugPrint('Lỗi khi lưu lịch sử nhận diện cục bộ: $e');
      }
    } else {
      debugPrint('Người dùng chưa đăng nhập, không thể lưu lịch sử nhận diện.');
    }
  }

  void _captureNewImage() async {
    // Nhận dữ liệu ảnh trực tiếp từ Navigator.pop
    final Uint8List? newImageBytes = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const CameraCaptureScreen(
          )),
    );

    if (newImageBytes != null) {
      _processInitialImage(newImageBytes); // Xử lý ảnh mới nhận được
    } else {
      debugPrint("Người dùng hủy hoặc không có ảnh mới từ CameraCaptureScreen.");
      if (_currentImageBytes == null) {
        setState(() {
          _classificationResult = "Vui lòng chụp hoặc chọn ảnh.";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeHelper().themeColor();

    final ButtonStyle commonButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.lightGreen[700],
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
    );

    final ButtonStyle disabledButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[400],
      foregroundColor: Colors.grey[600],
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 2,
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text('Kết quả nhận diện', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // 1. KHỐI HIỂN THỊ ẢNH
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(16.0),
                    child: _currentImageBytes == null // <-- Sử dụng biến trạng thái ảnh
                        ? Container(
                      width: 250,
                      height: 250,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, size: 120, color: Colors.grey),
                    )
                        : ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.memory(
                        _currentImageBytes!, // <-- Hiển thị ảnh từ biến trạng thái
                        height: 250,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 250,
                            height: 250,
                            color: Colors.red[100],
                            child: const Center(
                              child: Text(
                                'Không thể hiển thị ảnh',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  // 2. KHỐI KẾT QUẢ PHÂN LOẠI
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(26),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _isProcessingImage
                            ? const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: CircularProgressIndicator(),
                        )
                            : Text(
                          _classificationResult,
                          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  // 3. KHỐI MÔ TẢ RAU CỦ ĐƯỢC NHẬN DIỆN
                  if (_identifiedVegetableDetails != null && _identifiedVegetableDetails!.description.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(26),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Mô tả:",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _identifiedVegetableDetails!.description,
                            style: const TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),

                  // 4. KHỐI CÁC NÚT BẤM (Nằm ngang hàng)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: _isProcessingImage ? null : _captureNewImage,
                              icon: const Icon(Icons.camera_alt, size: 24),
                              label: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Chụp lại ảnh mới',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              style: _isProcessingImage ? disabledButtonStyle : commonButtonStyle,
                            ),
                          ),
                          const SizedBox(width: 10),

                          if (_identifiedVegetableDetails != null && !_isProcessingImage)
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  NavigatorService.pushNamed(
                                    AppRoutes.vegetableInfoScreen,
                                    arguments: {
                                      'classIndex': _identifiedVegetableDetails!.id,
                                      'imageBytes': _currentImageBytes, // <-- Truyền ảnh hiện tại
                                      'tabIndex': 0,
                                    },
                                  );
                                },
                                icon: const Icon(Icons.info_outline, size: 24),
                                label: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Xem thông tin rau củ',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                style: commonButtonStyle,
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: _selectedIndex),
    );
  }
}