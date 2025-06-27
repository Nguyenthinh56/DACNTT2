// lib/models/recognition_history_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';

class RecognitionHistoryModel {
  String id; // ID của tài liệu trong Firestore
  String userId;
  String vegetableName;
  String? imagePath;
  DateTime timestamp;

  RecognitionHistoryModel({
    required this.id,
    required this.userId,
    required this.vegetableName,
    this.imagePath,
    required this.timestamp,
  });

  // Factory constructor để tạo đối tượng từ Firestore DocumentSnapshot
  factory RecognitionHistoryModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return RecognitionHistoryModel(
      id: doc.id,
      userId: data['userId'] ?? '',
      vegetableName: data['vegetableName'] ?? 'Không xác định',
      imagePath: data['imagePath'], // <-- Cập nhật ở đây
      timestamp: (data['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  // Phương thức để chuyển đối tượng thành Map cho Firestore
  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'vegetableName': vegetableName,
      'imagePath': imagePath, // <-- Cập nhật ở đây
      'timestamp': Timestamp.fromDate(timestamp),
    };
  }
}