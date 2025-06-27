import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';


class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  // Đã xóa tham số onTap, widget này tự xử lý điều hướng

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
  });

  // Hàm _onTabTapped xử lý logic điều hướng nội bộ
  void _onTabTapped(BuildContext context, int index) {
    // Xử lý riêng cho tab Trang chủ (index 0)
    if (index == 0) {
      // Luôn điều hướng đến Trang chủ và xóa các route khác trên stack
      // Điều này đảm bảo nhấn icon Home luôn đưa về Trang chủ gốc
      Navigator.of(context).popUntil(
        ModalRoute.withName(AppRoutes.vegetableHomeScreen),
      );
    } else if (index == currentIndex) {
      // Đối với các tab khác, chỉ bỏ qua nếu đang ở tab hiện tại
      return; // Không làm gì nếu đang ở tab hiện tại
    } else {
      // Điều hướng đến các tab khác bằng pushNamed
      switch (index) {
        case 1:
          Navigator.pushNamed(context, AppRoutes.cameraCaptureScreen);
          break;
        case 2:
          Navigator.pushNamed(context, AppRoutes.personalInformationScreen);
          break;
        case 3:
          Navigator.pushNamed(context, AppRoutes.historyScreen);
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      // Gọi hàm _onTabTapped nội bộ khi một item được chạm
      onTap: (index) => _onTabTapped(context, index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Scan'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cá nhân'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Lịch sử'),
      ],
    );
  }
}

