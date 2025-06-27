// lib/auth_wrapper.dart
import 'package:flutter/material.dart';
import 'package:fe/presentation/login_screen.dart';
import 'package:fe/presentation/register_screen.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  // Biến để quyết định hiển thị màn hình đăng nhập hay đăng ký
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    // AuthWrapper giờ đây chỉ điều phối giữa Login và Register
    // Nó không còn lắng nghe trạng thái Firebase Auth ở đây nữa,
    // vì PersonalInformationScreen đã đảm nhiệm việc đó.
    if (showLoginPage) {
      return LoginScreen(showRegisterScreen: toggleScreens);
    } else {
      return RegisterScreen(showLoginScreen: toggleScreens);
    }
  }
}