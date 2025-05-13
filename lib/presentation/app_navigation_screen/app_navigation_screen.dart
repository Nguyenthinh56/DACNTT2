import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import './bloc/app_navigation_bloc.dart'; // Import Bloc cho màn hình này
import './models/app_navigation_model.dart'; // Import Model cho màn hình này

// Widget StatelessWidget cho màn hình chào mừng và điều hướng ban đầu.
// Màn hình này hiển thị lời chào và các tùy chọn điều hướng.
class AppNavigationScreen extends StatelessWidget {
  // Constructor với Key tùy chọn.
  const AppNavigationScreen({Key? key}) : super(key: key);

  // Phương thức builder tĩnh để tạo widget này cùng với BlocProvider.
  // Phương thức này giúp đóng gói việc khởi tạo Bloc cùng với widget UI.
  static Widget builder(BuildContext context) {
    // BlocProvider cung cấp một instance của AppNavigationBloc cho cây widget con của nó.
    return BlocProvider<AppNavigationBloc>(
      // create: Hàm tạo một instance mới của AppNavigationBloc.
      // Nó khởi tạo Bloc với trạng thái ban đầu chứa AppNavigationModel.
      // ..add(AppNavigationInitialEvent()): Thêm một sự kiện khởi tạo vào Bloc ngay sau khi tạo.
      create: (context) => AppNavigationBloc(
        AppNavigationState(appNavigationModelObj: AppNavigationModel()),
      )..add(AppNavigationInitialEvent()),
      // child: Widget con sẽ nhận được BlocProvider, ở đây là AppNavigationScreen.
      child: AppNavigationScreen(),
    );
  }

  // Phương thức build để xây dựng giao diện người dùng của widget.
  @override
  Widget build(BuildContext context) {
    // SafeArea đảm bảo nội dung không bị che khuất bởi các phần tử hệ thống (như notch, status bar).
    return SafeArea(
      child: Scaffold(
        // Scaffold cung cấp cấu trúc cơ bản cho màn hình.
        backgroundColor: Color(0XFFFFFFFF), // Màu nền trắng.
        body: Column( // Xếp các widget con theo chiều dọc.
          crossAxisAlignment: CrossAxisAlignment.start, // Căn chỉnh nội dung sang trái
          children: [
            // Phần hiển thị lời chào mừng
            Padding(
              padding: EdgeInsets.only(left: 20.h, top: 40.h, right: 20.h, bottom: 20.h), // Điều chỉnh padding
              child: Text(
                "Chào mừng bạn đến với ứng dụng nhận diện rau củ", // Lời chào mừng
                style: TextStyleHelper.instance.title28Bold, // Sử dụng style chữ lớn và đậm hơn (giả định style này tồn tại)
                textAlign: TextAlign.left, // Căn chỉnh văn bản sang trái
              ),
            ),
            // Đường phân cách sau lời chào
            Divider(height: 1.h, thickness: 1.h, color: Color(0XFFD2D2D2), indent: 20.h, endIndent: 20.h), // Thêm đường phân cách

            Expanded( // Expanded làm cho SingleChildScrollView chiếm hết không gian còn lại theo chiều dọc.
              child: SingleChildScrollView( // Cho phép nội dung cuộn nếu vượt quá kích thước màn hình.
                child: Container(
                  // Không cần padding top ở đây nữa vì đã có padding ở lời chào
                  padding: EdgeInsets.symmetric(vertical: 10.h), // Chỉ padding dọc
                  child: Column( // Xếp các mục điều hướng theo chiều dọc.
                    children: [
                      // Gọi widget _buildScreenTitle để tạo một mục điều hướng "Trang chủ".
                      _buildScreenTitle(
                        context,
                        screenTitle: "Trang chủ", // Văn bản hiển thị cho mục này.
                        onTapScreenTitle: () => onTapScreenTitle( // Hàm được gọi khi nhấn vào mục này.
                          context,
                          AppRoutes.vegetableHomeScreen, // Tên tuyến đường cần điều hướng đến.
                        ),
                      ),
                      // TODO: Thêm các mục _buildScreenTitle khác cho các màn hình khác nếu cần.
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Widget chung để xây dựng tiêu đề màn hình có thể nhấn được.
  // Được sử dụng để tạo từng mục trong danh sách điều hướng. Đã làm đẹp hơn cho mục "Trang chủ".
  Widget _buildScreenTitle(
      BuildContext context, {
        required String screenTitle, // Tiêu đề hiển thị (bắt buộc).
        Function? onTapScreenTitle, // Hàm callback khi nhấn vào tiêu đề (tùy chọn).
      }) {
    // GestureDetector phát hiện các cử chỉ của người dùng, ở đây là onTap.
    return GestureDetector(
      onTap: () {
        // ?.call() là toán tử an toàn null, chỉ gọi hàm nếu onTapScreenTitle không null.
        onTapScreenTitle?.call();
      },
      child: Container(
        // Padding cho container để tạo khoảng cách bên trong.
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.h), // Tăng padding dọc
        // Trang trí container để làm cho nút đẹp hơn.
        decoration: BoxDecoration(
          color: Color(0XFF4CAF50).withOpacity(0.1), // Màu nền xanh lá cây nhạt
          // Đã loại bỏ đường phân cách ở đây để dùng đường phân cách chung sau lời chào
          // Divider(height: 1.h, thickness: 1.h, color: Color(0XFFD2D2D2)),
        ),
        child: Row( // Xếp tiêu đề và icon mũi tên theo chiều ngang.
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Chia đều khoảng trống.
          children: [
            Text(
              screenTitle, // Hiển thị tiêu đề màn hình.
              textAlign: TextAlign.center,
              // Sử dụng TextStyleHelper để định dạng văn bản.
              // Sử dụng style chữ đậm hơn và màu xanh lá cây
              style: TextStyleHelper.instance.title20BoldGreen, // Giả định style này tồn tại
            ),
            // Icon mũi tên chỉ sang phải.
            Icon(Icons.arrow_forward, color: Color(0XFF4CAF50)), // Màu icon xanh lá cây
          ],
        ),
      ),
    );
  }

  /// Xử lý sự kiện nhấn chung cho các mục tiêu đề màn hình.
  // Hàm này được gọi khi một mục _buildScreenTitle được nhấn.
  void onTapScreenTitle(BuildContext context, String routeName) {
    // Sử dụng NavigatorService để điều hướng đến tuyến đường có tên routeName.
    NavigatorService.pushNamed(routeName);
  }
}