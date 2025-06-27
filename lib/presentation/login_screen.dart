import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../core/app_export.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterScreen;
  const LoginScreen({Key? key, required this.showRegisterScreen}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
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

// Hàm hiển thị dialog lỗi (giữ nguyên)
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

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _errorMessage = '';
  final FirebaseAuth _auth = FirebaseAuth.instance; // Thêm dòng này
  final GoogleSignIn _googleSignIn = GoogleSignIn(); // Thêm dòng này
  final FirebaseFirestore _firestore = FirebaseFirestore.instance; // Thêm dòng này
  bool _isLoading = false; // Thêm dòng này

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    setState(() {
      _errorMessage = '';
      _isLoading = true; // Bắt đầu loading
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // Hiển thị Dialog thông báo
      await _showSuccessDialog(
        context,
        'Bạn đã đăng nhập thành công! Tiếp tục trải nghiệm ứng dụng hoặc xem thông tin tài khoản của bạn ở trang thông tin cá nhân.',
      );
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.vegetableHomeScreen,
      );
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'user-not-found') {
        message = 'Không tìm thấy người dùng cho email này.';
      } else if (e.code == 'wrong-password') {
        message = 'Mật khẩu không đúng.';
      } else if (e.code == 'invalid-email') {
        message = 'Email không hợp lệ.';
      } else if (e.code == 'too-many-requests') {
        message = 'Quá nhiều yêu cầu đăng nhập thất bại. Vui lòng thử lại sau.';
      } else {
        message = 'Đăng nhập thất bại: ${e.message ?? 'Đã xảy ra lỗi.'}';
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

  // Hàm đăng nhập bằng Google
  Future<void> _signInWithGoogle() async {
    setState(() {
      _isLoading = true; // Bắt đầu loading
    });
    try {
      // đăng xuất khỏi tài khoản Google hiện tại
      await _googleSignIn.signOut();

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // User cancelled the sign-in
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
        // Lưu thông tin người dùng mới vào Firestore (nếu cần)
        if (userCredential.additionalUserInfo?.isNewUser == true) {
          await _firestore.collection('users').doc(user.uid).set({
            'uid': user.uid,
            'email': user.email,
            'displayName': user.displayName,
            'photoURL': user.photoURL,
            'createdAt': Timestamp.now(),
          });
        }
        await _showSuccessDialog(context, 'Đăng nhập thành công bằng Google!');
        Navigator.pushReplacementNamed(context, AppRoutes.vegetableHomeScreen);
      }
    } catch (e) {
      print("Lỗi đăng nhập Google: $e");
      setState(() {
        _errorMessage = 'Không thể đăng nhập bằng Google. Vui lòng thử lại.';
      });
    } finally {
      setState(() {
        _isLoading = false; // Kết thúc loading
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ThemeHelper().themeColor();

    return Scaffold(
      backgroundColor: Colors.transparent, // Nền trong suốt để hiển thị background.png
      extendBodyBehindAppBar: true, // Kéo dài body ra sau AppBar
      extendBody: true, // Kéo dài body ra sau BottomNavigationBar (nếu có)
      appBar: AppBar(
        title: Text(
          'Đăng nhập',
          style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.bold), // Màu chữ tiêu đề
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // AppBar trong suốt
        elevation: 0, // Bỏ đổ bóng của AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.gray600), // Màu icon nút back
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image (chiếm toàn bộ Stack)
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png', // Đường dẫn tới ảnh nền
              fit: BoxFit.cover, // Đảm bảo ảnh lấp đầy toàn bộ không gian
            ),
          ),
          SafeArea(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return ConstrainedBox( // Bọc SingleChildScrollView trong ConstrainedBox
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight, // Đặt chiều cao tối thiểu cho ConstrainedBox
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                    child: IntrinsicHeight( // Bọc Column trong IntrinsicHeight
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Vẫn căn giữa nội dung
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // THÊM SPACER Ở ĐẦU
                            const Spacer(), // Đẩy nội dung xuống dưới nếu không gian trống nhiều

                            // Tiêu đề
                            Text(
                              'Chào mừng trở lại!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: colors.blackCustom,
                              ),
                            ),
                            SizedBox(height: 30.0),

                            // Input Email
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(200),
                                borderRadius: BorderRadius.circular(12.0),
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
                                  labelStyle: TextStyle(color: colors.gray600),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                                  prefixIcon: Icon(Icons.email, color: colors.gray600),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: colors.blackCustom),
                              ),
                            ),

                            // Input Mật khẩu
                            Container(
                              margin: EdgeInsets.only(bottom: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(200),
                                borderRadius: BorderRadius.circular(12.0),
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
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                                  prefixIcon: Icon(Icons.lock, color: colors.gray600),
                                ),
                                obscureText: true,
                                style: TextStyle(color: colors.blackCustom),
                              ),
                            ),

                            // Thông báo lỗi
                            if (_errorMessage.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.only(bottom: 16.0),
                                child: Text(
                                  _errorMessage,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.red.shade700, fontWeight: FontWeight.bold),
                                ),
                              ),

                            // Nút Đăng nhập
                            _isLoading
                                ? Center( // Bọc trong Center để căn giữa loading indicator
                              child: SizedBox(
                                width: 24.0, // Đặt chiều rộng mong muốn
                                height: 24.0, // Đặt chiều cao mong muốn
                                child: CircularProgressIndicator(
                                  color: Colors.green.shade700, // Giữ nguyên màu xanh
                                  strokeWidth: 2.0, // Giảm độ dày của vòng tròn
                                ),
                              ),
                            )
                                : ElevatedButton(
                              onPressed: _signIn,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade700,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                elevation: 5,
                              ),
                              child: Text(
                                'Đăng nhập',
                                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 16.0),

                            // Nút Đăng nhập bằng Google
                            _isLoading
                                ? Center( // Bọc trong Center để căn giữa loading indicator
                              child: SizedBox(
                                width: 24.0, // Đặt chiều rộng mong muốn
                                height: 24.0, // Đặt chiều cao mong muốn
                                child: CircularProgressIndicator(
                                  color: Colors.blue, // Đặt màu phù hợp với Google
                                  strokeWidth: 2.0, // Giảm độ dày của vòng tròn
                                ),
                              ),
                            )
                                : ElevatedButton.icon(
                              onPressed: _signInWithGoogle,
                              icon: Icon(Icons.account_circle, color: Colors.blue),
                              label: Text(
                                'Đăng nhập bằng Google',
                                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                elevation: 3,
                              ),
                            ),
                            SizedBox(height: 16.0),

                            // Nút Đăng ký (chuyển hướng)
                            TextButton(
                              onPressed: widget.showRegisterScreen,
                              child: Text(
                                'Chưa có tài khoản? Đăng ký ngay!',
                                style: TextStyle(
                                  color: colors.blackCustom,
                                  fontSize: 16.0,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            // THÊM SPACER Ở CUỐI
                            const Spacer(), // Đẩy nội dung lên trên nếu không gian trống nhiều
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