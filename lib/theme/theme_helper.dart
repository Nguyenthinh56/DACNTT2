import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../core/utils/pref_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

class LightCodeColors {
  // App Colors
  Color get black => const Color(0xFF1E1E1E); // Giữ nguyên, màu đen chung
  Color get white => const Color(0xFFFFFFFF); // Giữ nguyên, màu trắng chung
  Color get gray400 => const Color(0xFF9CA3AF); // Giữ nguyên
  Color get whiteA700 => const Color(0xFFFFFFFF);

  // Màu sắc chính và phụ theo phong cách Dienmayxanh
  // Bạn có thể tham khảo màu từ Figma của bạn hoặc sử dụng các giá trị HEX thông dụng
  // Tôi sẽ sử dụng các màu xám để phù hợp hơn với giao diện sạch sẽ.
  Color get gray900 => const Color(0xFF212121); // Màu xám rất đậm (gần đen) cho văn bản chính
  Color get gray700 => const Color(0xFF424242); // Màu xám đậm hơn cho tiêu đề phụ hoặc icon
  Color get gray600 => const Color(0xFF616161); // Màu xám trung bình cho mô tả hoặc ghi chú
  Color get gray300 => const Color(0xFFE0E0E0); // Màu xám nhạt cho đường kẻ phân cách hoặc nền nhẹ
  Color get gray100 => const Color(0xFFF5F5F5); // Màu xám rất nhạt cho nền của các phần

  // Màu Primary Container (đã dùng cho số bước) - Có thể chọn màu xanh lá cây hoặc màu bạn muốn làm điểm nhấn
  Color get primaryContainer => const Color(0XFF4CAF50); // Màu xanh lá cây tương tự trong Figma của bạn (nếu có)
  Color get onPrimaryContainer => Colors.white; // Màu chữ trên primaryContainer

  // Các màu tùy chỉnh khác (giữ lại nếu bạn vẫn dùng ở nơi khác)
  Color get blackCustom => Colors.black;
  Color get whiteCustom => Colors.white;
  Color get greyCustom => Colors.grey;
  Color get transparentCustom => Colors.transparent;
  Color get greenCustom => Colors.green;
  Color get color14D9A3FF => const Color(0xFF14D9A3);
  Color get colorFFF3F4 => const Color(0xFFF3F4F9);
  Color get colorFF8685 => const Color(0xFF86859E);
  Color get colorFFFFF9 => const Color(0xFFFFFFF9); // Màu trắng ngà
}