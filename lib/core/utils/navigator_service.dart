import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

// Quản lý điều hướng ứng dụng tập trung sử dụng GlobalKey.
class NavigatorService {
  // GlobalKey để truy cập NavigatorState từ bất kỳ đâu.
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Điều hướng đến màn hình mới theo tên tuyến đường với hiệu ứng chuyển trang.
  static Future<dynamic> pushNamed(
      String routeName, {
        dynamic arguments,
      }) async {
    return navigatorKey.currentState?.push(
      PageRouteBuilder(
        settings: RouteSettings(name: routeName, arguments: arguments),
        pageBuilder: (context, animation, secondaryAnimation) {
          // Lấy widget màn hình từ AppRoutes dựa trên tên tuyến đường.
          final WidgetBuilder? builder = AppRoutes.routes[routeName];
          if (builder != null) {
            return builder(context);
          }
          // Hiển thị màn hình lỗi nếu không tìm thấy tuyến đường.
          return Scaffold(
            appBar: AppBar(title: const Text('Lỗi điều hướng')),
            body: Center(child: Text('Không tìm thấy tuyến đường: $routeName')),
          );
        },
        // Hiệu ứng chuyển trang (ví dụ: trượt từ dưới lên).
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // Sử dụng SlideTransition để tạo hiệu ứng trượt.
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0), // Bắt đầu từ dưới (x=0.0, y=1.0)
              end: Offset.zero, // Kết thúc ở vị trí ban đầu (x=0.0, y=0.0)
            ).animate(animation), // Áp dụng animation để điều khiển vị trí
            child: child, // Widget của màn hình mới
          );
          // Nếu muốn hiệu ứng trượt từ phải sang, dùng:
          // begin: const Offset(1.0, 0.0), end: Offset.zero
        },
        transitionDuration: const Duration(milliseconds: 300), // Thời gian hiệu ứng
      ),
    );
  }

  // Quay lại màn hình trước đó.
  static void goBack() {
    return navigatorKey.currentState?.pop();
  }

  // Điều hướng đến màn hình mới và loại bỏ các màn hình cũ đến khi thỏa điều kiện.
  static Future<dynamic> pushNamedAndRemoveUntil(
      String routeName, {
        bool routePredicate = false,
        dynamic arguments,
      }) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
          (route) => routePredicate,
      arguments: arguments,
    );
  }

  // Loại bỏ màn hình hiện tại và điều hướng đến màn hình mới.
  static Future<dynamic> popAndPushNamed(
      String routeName, {
        dynamic arguments,
      }) async {
    return navigatorKey.currentState?.popAndPushNamed(
      routeName,
      arguments: arguments,
    );
  }
}
