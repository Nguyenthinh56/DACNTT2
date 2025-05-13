import 'package:flutter/material.dart';
import '../../theme/theme_helper.dart'; // Import ThemeHelper

// Màn hình Đăng nhập
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  // Phương thức builder tĩnh để sử dụng trong hệ thống định tuyến (AppRoutes).
  static Widget builder(BuildContext context) {
    return const LoginScreen();
  }

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers để quản lý giá trị của TextField
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Biến để ẩn/hiện mật khẩu
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    // Giải phóng controllers khi widget bị hủy
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Hàm xử lý logic đăng nhập (placeholder)
  void _login() {
    // TODO: Implement logic đăng nhập thực tế ở đây
    debugPrint('Email: ${_emailController.text}');
    debugPrint('Password: ${_passwordController.text}');

    // Giả lập đăng nhập thành công và quay lại màn hình Thông tin cá nhân
    // Trong thực tế, bạn sẽ kiểm tra thông tin đăng nhập với backend
    // và lưu trạng thái đăng nhập (ví dụ: dùng SharedPreferences)
    // Sau đó, pop về màn hình trước đó (PersonalInformationScreen)
    // và màn hình đó sẽ kiểm tra lại trạng thái đăng nhập để hiển thị giao diện phù hợp.
    Navigator.of(context).pop({'action': 'loggedIn'}); // Truyền kết quả về màn hình trước
  }

  @override
  Widget build(BuildContext context) {
    // Truy cập màu sắc từ ThemeHelper thông qua themeColor()
    final colors = ThemeHelper().themeColor();
    // Truy cập ThemeData nếu cần các thuộc tính theme khác
    final currentThemeData = ThemeHelper().themeData();


    return Scaffold(
      // AppBar không có nút back mặc định nếu đây là màn hình đầu tiên trong luồng đăng nhập
      // Nếu màn hình này được push lên từ màn hình khác, Scaffold sẽ tự thêm nút back.
      appBar: AppBar(
        title: const Text('Đăng nhập'), // Tiêu đề AppBar
        centerTitle: true, // Căn giữa tiêu đề
        // Sử dụng màu từ theme của bạn cho AppBar nếu cần
        // backgroundColor: currentThemeData.primaryColor, // Ví dụ
      ),
      body: SafeArea( // Bọc nội dung body bằng SafeArea để tránh System UI
        child: SingleChildScrollView( // Cho phép cuộn nếu bàn phím hiện lên
          padding: const EdgeInsets.all(24.0), // Thêm padding xung quanh nội dung
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
            crossAxisAlignment: CrossAxisAlignment.stretch, // Kéo giãn chiều ngang
            children: <Widget>[
              // Tiêu đề hoặc Logo (tùy chọn)
              Text(
                'Chào mừng trở lại!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  // --- Sửa lỗi: Truy cập màu đen từ colors object ---
                  color: colors.blackCustom, // Sử dụng colors.blackCustom
                ),
              ),
              const SizedBox(height: 40), // Khoảng cách

              // Trường nhập Email/Tên đăng nhập
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email hoặc Tên đăng nhập',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: colors.grey200, // Sử dụng màu xám nhạt từ colors
                ),
                keyboardType: TextInputType.emailAddress, // Kiểu bàn phím email
              ),
              const SizedBox(height: 20), // Khoảng cách

              // Trường nhập Mật khẩu
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: colors.grey200, // Sử dụng màu xám nhạt từ colors
                  suffixIcon: IconButton( // Nút ẩn/hiện mật khẩu
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !_isPasswordVisible, // Ẩn/hiện văn bản mật khẩu
              ),
              const SizedBox(height: 30), // Khoảng cách

              // Nút Đăng nhập
              ElevatedButton(
                onPressed: _login, // Gọi hàm đăng nhập khi nhấn
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  // --- Sửa lỗi: Truy cập màu xanh lá từ colors object ---
                  // Sử dụng colors.greenCustom hoặc tên màu xanh lá cây đúng trong LightCodeColors
                  backgroundColor: colors.greenCustom,
                  foregroundColor: colors.whiteCustom, // Sử dụng màu trắng từ colors
                ),
                child: const Text(
                  'Đăng nhập',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20), // Khoảng cách

              // Tùy chọn "Quên mật khẩu?"
              TextButton(
                onPressed: () {
                  // TODO: Điều hướng đến màn hình Quên mật khẩu
                  debugPrint('Navigate to Forgot Password');
                },
                child: Text(
                  'Quên mật khẩu?',
                  // --- Sửa lỗi: Truy cập màu xám xanh từ colors object ---
                  // Kiểm tra tên màu xám xanh trong LightCodeColors của bạn
                  style: TextStyle(color: colors.gray400), // Sử dụng colors.gray400 (tên có sẵn) hoặc tên màu xám xanh đúng
                ),
              ),
              const SizedBox(height: 20), // Khoảng cách

              // Tùy chọn "Chưa có tài khoản? Đăng ký"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Chưa có tài khoản? "),
                  TextButton(
                    onPressed: () {
                      // TODO: Điều hướng đến màn hình Đăng ký
                      debugPrint('Navigate to Sign Up Screen');
                    },
                    child: Text(
                      'Đăng ký',
                      // --- Sửa lỗi: Truy cập màu xanh lá từ colors object ---
                      style: TextStyle(color: colors.greenCustom), // Sử dụng colors.greenCustom
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
