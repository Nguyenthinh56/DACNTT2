import 'package:flutter/material.dart';
import '../core/app_export.dart';

// Lớp TextStyleHelper giúp quản lý tập trung các định nghĩa kiểu văn bản (text styles)
// được sử dụng trong ứng dụng.
class TextStyleHelper {
  // Biến instance tĩnh để triển khai Singleton pattern.
  // Đảm bảo chỉ có một instance của TextStyleHelper trong toàn bộ ứng dụng.
  static TextStyleHelper? _instance;

  // Private constructor để ngăn tạo instance từ bên ngoài.
  TextStyleHelper._();

  // Getter tĩnh để truy cập instance duy nhất của TextStyleHelper.
  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._(); // Tạo instance nếu chưa có.
    return _instance!; // Trả về instance.
  }

  // Headline Styles
  // Medium-large text styles for section headers

  TextStyle get headline29Medium => TextStyle(
    fontSize: 29.fSize, // Kích thước font 29, sử dụng extension .fSize
    fontWeight: FontWeight.w500, // Độ đậm Medium (w500)
    color: appTheme.whiteCustom, // Màu chữ trắng tùy chỉnh từ appTheme
  );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title20RegularRoboto => TextStyle(
    fontSize: 20.fSize, // Kích thước font 20
    fontWeight: FontWeight.w400, // Độ đậm Regular (w400)
    fontFamily: 'Roboto', // Font chữ Roboto
    color: Color(0xFF000000), // Màu chữ đen
  );

  TextStyle get title20Medium => TextStyle(
    fontSize: 20.fSize, // Kích thước font 20
    fontWeight: FontWeight.w500, // Độ đậm Medium (w500)
    color: appTheme.blackCustom, // Màu chữ đen tùy chỉnh từ appTheme
  );

  // --- Thêm định nghĩa cho style title28Bold (đã dùng trong app_navigation_screen.dart) ---
  TextStyle get title28Bold {
    return TextStyle(
      fontSize: 28.fSize, // Kích thước font 28
      fontWeight: FontWeight.bold, // Độ đậm Bold
      // Màu chữ mặc định có thể là đen hoặc tùy chỉnh theo thiết kế
      color: Colors.black87, // Sử dụng màu đen hoặc điều chỉnh theo thiết kế Figma
      // Nếu bạn sử dụng font tùy chỉnh cho style này, hãy thêm fontFamily ở đây
      // fontFamily: 'YourCustomFont',
    );
  }

  // --- Thêm định nghĩa cho style title20BoldGreen (đã dùng trong app_navigation_screen.dart) ---
  TextStyle get title20BoldGreen {
    return TextStyle(
      fontSize: 20.fSize, // Kích thước font 20
      fontWeight: FontWeight.bold, // Độ đậm Bold
      // Màu chữ xanh lá cây (màu đã dùng trong app_navigation_screen.dart)
      color: Color(0XFF4CAF50), // Màu xanh lá cây
      // fontFamily: 'YourCustomFont',
    );
  }


  // Body Styles
  // Standard text styles for body content

  TextStyle get body15Medium => TextStyle(
    fontSize: 15.fSize, // Kích thước font 15
    fontWeight: FontWeight.w500, // Độ đậm Medium (w500)
    color: appTheme.whiteCustom, // Màu chữ trắng tùy chỉnh
  );

  TextStyle get body14Medium => TextStyle(
    fontSize: 14.fSize, // Kích thước font 14
    fontWeight: FontWeight.w500, // Độ đậm Medium (w500)
    color: appTheme.blackCustom, // Màu chữ đen tùy chỉnh
  );

  TextStyle get body14 =>
      TextStyle(fontSize: 14.fSize, color: appTheme.colorFF8685); // Kích thước font 14, màu tùy chỉnh
}