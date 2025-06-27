import 'package:flutter/material.dart';
import '../core/app_export.dart'; // Đảm bảo rằng appTheme được import qua đây

// Lớp TextStyleHelper giúp quản lý tập trung các định nghĩa kiểu văn bản (text styles)
// được sử dụng trong ứng dụng.
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Headline Styles
  TextStyle get headline29Medium => TextStyle(
    fontSize: 29.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.whiteCustom,
  );

  // Title Styles (Cập nhật và thêm mới để phù hợp với Meal Info Screen)
  // Tiêu đề rất lớn và đậm cho tên món ăn
  TextStyle get title28Bold => TextStyle(
    fontSize: 28.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.gray900, // Màu chữ rất đậm
  );

  // Tiêu đề chính của các phần (Nguyên liệu, Cách làm)
  TextStyle get title24Bold => TextStyle(
    fontSize: 24.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.gray900, // Màu chữ rất đậm
  );

  // Tiêu đề phụ (ví dụ: trên AppBar, hoặc tiêu đề bước)
  TextStyle get title18Bold => TextStyle(
    fontSize: 18.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.gray900, // Màu chữ rất đậm
  );

  TextStyle get title20RegularRoboto => TextStyle(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    color: const Color(0xFF000000),
  );

  TextStyle get title20Medium => TextStyle(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.gray900, // Sử dụng màu xám rất đậm
  );

  TextStyle get title20BoldGreen => TextStyle(
    fontSize: 20.fSize,
    fontWeight: FontWeight.bold,
    color: const Color(0XFF4CAF50),
  );

  // Body Styles
  // Standard text styles for body content
  TextStyle get body16Regular => TextStyle(
    fontSize: 16.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.gray700, // Màu xám đậm vừa cho nội dung thông thường
  );

  // Dùng cho giá trị trong thông tin thời gian/khẩu phần và số lượng nguyên liệu
  TextStyle get body16Bold => TextStyle(
    fontSize: 16.fSize,
    fontWeight: FontWeight.bold,
    color: appTheme.gray900, // Màu chữ rất đậm
  );

  TextStyle get body15Medium => TextStyle(
    fontSize: 15.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.whiteCustom,
  );

  TextStyle get body14Medium => TextStyle(
    fontSize: 14.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.whiteCustom,
  );

  TextStyle get body14Regular => TextStyle(
    fontSize: 14.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.gray600, // Màu xám trung bình cho các ghi chú nhỏ
  );

  TextStyle get body12Regular => TextStyle(
    fontSize: 12.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.gray600, // Màu xám trung bình cho các ghi chú nhỏ hơn
  );

  // Subtitle Styles
  // Small text styles for subheadings or secondary information
  TextStyle get subtitle12Regular => TextStyle(
    fontSize: 12.fSize,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF000000),
  );

  TextStyle get subtitle12Medium => TextStyle(
    fontSize: 12.fSize,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF000000),
  );

  // Label Styles
  // Smallest text styles for labels or captions
  TextStyle get label10Regular => TextStyle(
    fontSize: 10.fSize,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF000000),
  );
}