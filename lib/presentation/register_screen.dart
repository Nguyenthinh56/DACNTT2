import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../core/app_export.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginScreen;
  const RegisterScreen({Key? key, required this.showLoginScreen}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

// Hàm hiển thị dialog thành công (giữ nguyên)
Future<void> _showSuccessDialog(BuildContext context, String message) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Center(
          child: Icon(
            Icons.check_circle_outline,
            color: Colors.green,
            size: 60,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Đồng ý', style: TextStyle(color: Colors.blue)),
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
          ),
        ],
      );
    },
  );
}

// Hàm hiển thị dialog lỗi (THÊM HÀM NÀY)
Future<void> _showErrorDialog(BuildContext context, String message) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Center(
          child: Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 60,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Đồng ý', style: TextStyle(color: Colors.red)),
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
          ),
        ],
      );
    },
  );
}


class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String _errorMessage = '';
  final FirebaseAuth _auth = FirebaseAuth.instance; // THÊM DÒNG NÀY
  final GoogleSignIn _googleSignIn = GoogleSignIn(); // THÊM DÒNG NÀY
  final FirebaseFirestore _firestore = FirebaseFirestore.instance; // THÊM DÒNG NÀY
  bool _isLoading = false; // THÊM DÒNG NÀY

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
    setState(() {
      _errorMessage = '';
      _isLoading = true; // Bắt đầu loading
    });

    if (_passwordController.text.trim() != _confirmPasswordController.text.trim()) {
      setState(() {
        _errorMessage = 'Mật khẩu xác nhận không khớp.';
        _isLoading = false; // Kết thúc loading nếu có lỗi
      });
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // Đăng ký thành công.
      await _showSuccessDialog(
        context,
        'Bạn đã đăng ký tài khoản thành công! Tiếp tục trải nghiệm ứng dụng hoặc xem thông tin tài khoản của bạn ở trang thông tin cá nhân.',
      );

      // Điều hướng đến màn hình chính sau khi đăng ký thành công
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.vegetableHomeScreen,
      );
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'weak-password') {
        message = 'Mật khẩu quá yếu.';
      } else if (e.code == 'email-already-in-use') {
        message = 'Email này đã được sử dụng.';
      } else if (e.code == 'invalid-email') {
        message = 'Email không hợp lệ.';
      } else {
        message = 'Đăng ký thất bại: ${e.message ?? 'Đã xảy ra lỗi.'}';
      }
      setState(() {
        _errorMessage = message;
      });
      print('Firebase Auth Error: ${e.code} - ${e.message}');
    } catch (e) {
      setState(() {
        _errorMessage = 'Đã xảy ra lỗi không xác định: $e';
      });
      print('General Error: $e');
    } finally {
      setState(() {
        _isLoading = false; // Kết thúc loading
      });
    }
  }

  // Hàm đăng ký bằng Google
  Future<void> _signUpWithGoogle() async {
    setState(() {
      _isLoading = true; // Bắt đầu loading
      _errorMessage = ''; // Xóa thông báo lỗi cũ
    });
    try {
      // Luôn đăng xuất khỏi Google để buộc hiển thị bộ chọn tài khoản
      // Điều này chỉ đăng xuất khỏi phiên Google, không phải Firebase.
      await _googleSignIn.signOut();

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // Người dùng hủy đăng nhập
        setState(() {
          _isLoading = false; // Kết thúc loading
        });
        return;
      }
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential = await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        // KIỂM TRA ĐÂY CÓ PHẢI LÀ NGƯỜI DÙNG MỚI HAY KHÔNG
        if (userCredential.additionalUserInfo?.isNewUser == true) {
          // Đây là người dùng mới, lưu thông tin vào Firestore
          await _firestore.collection('users').doc(user.uid).set({
            'uid': user.uid,
            'email': user.email,
            'displayName': user.displayName,
            'photoURL': user.photoURL,
            'createdAt': Timestamp.now(),
          });
          await _showSuccessDialog(context, 'Bạn đã đăng ký tài khoản thành công bằng Google!');
          // Chỉ điều hướng nếu là người dùng mới
          Navigator.pushReplacementNamed(context, AppRoutes.vegetableHomeScreen);
        } else {
          // TÀI KHOẢN GOOGLE NÀY ĐÃ TỒN TẠI (ĐÃ ĐƯỢC DÙNG ĐỂ ĐĂNG NHẬP TRƯỚC ĐÓ)
          final String existingAccountMessage =
              'Tài khoản Google này đã được sử dụng để đăng nhập. Vui lòng chọn tài khoản Google khác hoặc chuyển đến màn hình đăng nhập.';
          setState(() {
            _errorMessage = existingAccountMessage;
          });
          await _showErrorDialog(context, existingAccountMessage);

          // RẤT QUAN TRỌNG: Đăng xuất người dùng khỏi Firebase ngay lập tức
          // để ngăn họ tự động vào ứng dụng sau khi báo lỗi.
          await FirebaseAuth.instance.signOut();
          // Đăng xuất khỏi Google cũng để bộ chọn tài khoản hiện ra lần sau.
          await _googleSignIn.signOut();
        }
      }
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'account-exists-with-different-credential') {
        message = 'Tài khoản Google này đã được liên kết với một phương thức đăng nhập khác (ví dụ: email/mật khẩu).';
      } else if (e.code == 'popup-closed-by-user' || e.code == 'cancelled') {
        message = 'Đăng nhập Google đã bị hủy.';
      } else {
        message = 'Đăng ký bằng Google thất bại: ${e.message ?? 'Đã xảy ra lỗi.'}';
      }
      setState(() {
        _errorMessage = message;
      });
      print("Lỗi FirebaseAuth Google: ${e.code} - ${e.message}");
      await _showErrorDialog(context, message); // Hiển thị dialog lỗi
      // Nếu có lỗi, cũng cần đảm bảo người dùng không bị đăng nhập.
      await FirebaseAuth.instance.signOut(); // Đăng xuất khỏi Firebase Auth
      await _googleSignIn.signOut(); // Đăng xuất khỏi Google
    } catch (e) {
      print("Lỗi đăng ký Google không xác định: $e");
      setState(() {
        _errorMessage = 'Không thể đăng ký bằng Google. Vui lòng thử lại.';
      });
      await _showErrorDialog(context, 'Không thể đăng ký bằng Google. Vui lòng thử lại.'); // Hiển thị dialog lỗi
      // Nếu có lỗi chung, cũng cần đảm bảo người dùng không bị đăng nhập.
      await FirebaseAuth.instance.signOut(); // Đăng xuất khỏi Firebase Auth
      await _googleSignIn.signOut(); // Đăng xuất khỏi Google
    } finally {
      setState(() {
        _isLoading = false; // Kết thúc loading
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    final colors = ThemeHelper().themeColor(); // Lấy theme colors

    return Scaffold(
      backgroundColor: Colors.transparent, // Nền trong suốt để hiển thị background.png
      extendBodyBehindAppBar: true, // Kéo dài body ra sau AppBar
      extendBody: true, // Kéo dài body ra sau BottomNavigationBar (nếu có)
      appBar: AppBar(
        title: Text(
          'Đăng ký',
          style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.bold), // Màu chữ tiêu đề
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // AppBar trong suốt
        elevation: 0, // Bỏ đổ bóng của AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.blackCustom), // Màu icon nút back
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover, // Đảm bảo ảnh lấp đầy toàn bộ không gian
            ),
          ),
          // Nội dung chính của màn hình
          SafeArea( // Đảm bảo nội dung không bị che bởi notch/status bar
            child: LayoutBuilder( // Thêm LayoutBuilder để lấy constraints từ màn hình
              builder: (BuildContext context, BoxConstraints constraints) {
                return ConstrainedBox( // Bọc SingleChildScrollView trong ConstrainedBox
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight, // Đặt chiều cao tối thiểu cho ConstrainedBox bằng chiều cao tối đa khả dụng
                  ),
                  child: SingleChildScrollView( // Cho phép cuộn khi bàn phím hiện lên
                    padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.h), // Padding tổng thể
                    child: IntrinsicHeight( // Bọc Column trong IntrinsicHeight
                      child: Center( // Căn giữa toàn bộ nội dung form
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Vẫn căn giữa theo chiều dọc
                          crossAxisAlignment: CrossAxisAlignment.stretch, // Kéo dài các phần tử con theo chiều ngang
                          children: [
                            const Spacer(), // THÊM SPACER Ở ĐẦU

                            // Tiêu đề hoặc logo (tùy chọn)
                            Text(
                              'Tạo tài khoản mới',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28.fSize,
                                fontWeight: FontWeight.bold,
                                color: colors.blackCustom, // Màu chữ
                              ),
                            ),
                            SizedBox(height: 30.h),

                            // Input Email
                            Container(
                              margin: EdgeInsets.only(bottom: 16.h),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(200), // Nền trắng hơi trong suốt
                                borderRadius: BorderRadius.circular(12.h),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(26),
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: colors.gray600), // Màu label
                                  border: InputBorder.none, // Bỏ border mặc định
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.h),
                                  prefixIcon: Icon(Icons.email, color: colors.gray600), // Icon
                                ),
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: colors.blackCustom), // Màu chữ nhập vào
                              ),
                            ),

                            // Input Mật khẩu
                            Container(
                              margin: EdgeInsets.only(bottom: 16.h),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(200),
                                borderRadius: BorderRadius.circular(12.h),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(26),
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Mật khẩu',
                                  labelStyle: TextStyle(color: colors.gray600),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.h),
                                  prefixIcon: Icon(Icons.lock, color: colors.gray600),
                                ),
                                obscureText: true,
                                style: TextStyle(color: colors.blackCustom),
                              ),
                            ),

                            // Input Xác nhận Mật khẩu
                            Container(
                              margin: EdgeInsets.only(bottom: 20.h),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(200),
                                borderRadius: BorderRadius.circular(12.h),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(26),
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: _confirmPasswordController,
                                decoration: InputDecoration(
                                  labelText: 'Xác nhận Mật khẩu',
                                  labelStyle: TextStyle(color: colors.gray600),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.h),
                                  prefixIcon: Icon(Icons.lock_reset, color: colors.gray600),
                                ),
                                obscureText: true,
                                style: TextStyle(color: colors.blackCustom),
                              ),
                            ),

                            // Thông báo lỗi
                            if (_errorMessage.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.only(bottom: 16.h),
                                child: Text(
                                  _errorMessage,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.red.shade700, fontWeight: FontWeight.bold),
                                ),
                              ),

                            // Nút Đăng ký (email/password)
                            _isLoading
                                ? Center( // Bọc trong Center để căn giữa loading indicator
                              child: SizedBox(
                                width: 24.0, // Đặt chiều rộng mong muốn
                                height: 24.0, // Đặt chiều cao mong muốn
                                child: CircularProgressIndicator(
                                  color: Colors.green.shade700, // Màu sắc cho nút Đăng ký
                                  strokeWidth: 2.0, // Độ dày vòng tròn
                                ),
                              ),
                            )
                                : ElevatedButton(
                              onPressed: _signUp,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade700, // Một sắc thái xanh lá cây đậm
                                foregroundColor: Colors.white, // Màu chữ nút
                                padding: EdgeInsets.symmetric(vertical: 16.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.h),
                                ),
                                elevation: 5,
                              ),
                              child: Text(
                                'Đăng ký',
                                style: TextStyle(fontSize: 18.fSize, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 16.h),

                            // Nút Đăng ký bằng Google
                            _isLoading
                                ? SizedBox.shrink() // Ẩn nút Google khi đang loading
                                : ElevatedButton.icon(
                              onPressed: _signUpWithGoogle,
                              icon: Icon(Icons.account_circle, color: Colors.blue), // Icon Google
                              label: Text(
                                'Đăng ký bằng Google',
                                style: TextStyle(fontSize: 18.fSize, fontWeight: FontWeight.bold, color: Colors.black87),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(vertical: 16.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.h),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                elevation: 3,
                              ),
                            ),
                            SizedBox(height: 16.h),


                            // Nút Đăng nhập
                            TextButton(
                              onPressed: widget.showLoginScreen,
                              child: Text(
                                'Đã có tài khoản? Đăng nhập ngay!',
                                style: TextStyle(
                                  color: colors.blackCustom, // Màu chữ link
                                  fontSize: 16.fSize,
                                  decoration: TextDecoration.underline, // Gạch chân
                                ),
                              ),
                            ),
                            const Spacer(), // THÊM SPACER Ở CUỐI
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}