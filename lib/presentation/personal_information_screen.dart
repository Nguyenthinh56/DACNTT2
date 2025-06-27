import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../core/app_export.dart';
import 'widgets/bottom_navigation_bar_widget.dart';

// Màn hình Thông tin cá nhân / Tài Khoản (tùy trạng thái đăng nhập)
class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  static Widget builder(BuildContext context) {
    return const PersonalInformationScreen();
  }

  @override
  _PersonalInformationScreenState createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  @override
  void initState() {
    super.initState();
  }

  // Hàm đăng xuất
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      print('Người dùng đã đăng xuất thành công.');
      // Giữ nguyên logic hiện tại của bạn, không thêm điều hướng tự động
    } catch (e) {
      print('Lỗi khi đăng xuất: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Đăng xuất thất bại: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ThemeHelper().themeColor();

    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final user = snapshot.data;

        return Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          extendBody: true,
          appBar: AppBar(
            title: Text(user != null ? 'Thông tin cá nhân' : 'Tài Khoản',
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: user != null
                ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
                : null,
          ),
          body: Stack(
            children: [
              // Ảnh nền lấp đầy toàn bộ Stack
              Positioned.fill(
                child: Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Vùng nội dung cũng lấp đầy toàn bộ Stack, nhưng có Safe Area và khả năng cuộn
              Positioned.fill(
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        user != null ? _buildLoggedInUserInfo(context, colors, user) : _buildLoggedOutUserInfo(context, colors),

                        const SizedBox(height: 40),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Thông tin khác',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          color: Colors.white, // Nền trắng cho Card
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            children: [
                              Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  leading: Icon(Icons.info_outline, color: colors.gray600),
                                  title: Text('Về chúng tôi',
                                      style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.w500, fontSize: 16.0)), // Tăng kích thước chữ
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                      child: Text(
                                        'Ứng dụng này được phát triển để giúp bạn dễ dàng nhận diện các loại rau củ quả thông qua hình ảnh. Chúng tôi cam kết mang đến trải nghiệm tốt nhất và thông tin hữu ích cho người dùng.',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(color: colors.gray600, fontSize: 14.0),
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                  ],
                                  trailing: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey[600],
                                    size: 24,
                                  ),
                                ),
                              ),
                              Divider(height: 0, indent: 16, endIndent: 16, color: Colors.grey[300]),

                              Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  leading: Icon(Icons.contact_mail_outlined, color: colors.gray600),
                                  title: Text('Liên hệ',
                                      style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.w500, fontSize: 16.0)), // Tăng kích thước chữ
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Email: support@vegetablesapp.com',
                                              style: TextStyle(color: colors.gray600, fontSize: 14.0)),
                                          const SizedBox(height: 4),
                                          Text('Điện thoại: +84 123 456 789',
                                              style: TextStyle(color: colors.gray600, fontSize: 14.0)),
                                          const SizedBox(height: 4),
                                          Text('Địa chỉ: Thành phố Hồ Chí Minh, Việt Nam',
                                              style: TextStyle(color: colors.gray600, fontSize: 14.0)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                  ],
                                  trailing: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey[600],
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: 2,
          ),
        );
      },
    );
  }

  // Giao diện khi người dùng ĐÃ đăng nhập (thông tin người dùng và nút đăng xuất)
  Widget _buildLoggedInUserInfo(BuildContext context, dynamic colors, User user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha((255 * 0.3).round()),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey[300],
            backgroundImage: user.photoURL != null ? NetworkImage(user.photoURL!) : null,
            child: user.photoURL == null
                ? Icon(
              Icons.person,
              size: 60,
              color: Colors.grey[600],
            )
                : null,
          ),
        ),
        const SizedBox(height: 20),
        Text(user.displayName ?? user.email ?? 'Người dùng',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: colors.blackCustom)),
        const SizedBox(height: 8),
        Text(user.email ?? 'Không có email',
            style: TextStyle(fontSize: 16, color: colors.gray600)),
        const SizedBox(height: 40),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Thông tin chi tiết',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
        ),
        const SizedBox(height: 10),
        Card(
          color: Colors.white,
          elevation: 6.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.info_outline, color: colors.gray600),
                title: Text('UID', style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.w500, fontSize: 16.0)),
                subtitle: Text(user.uid, style: TextStyle(color: colors.gray600, fontSize: 14.0)),
              ),
              Divider(height: 0, indent: 16, endIndent: 16, color: Colors.grey[300]),
              ListTile(
                leading: Icon(Icons.verified_user, color: user.emailVerified ? Colors.green : colors.gray600),
                title: Text('Đã xác minh email', style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.w500, fontSize: 16.0)),
                subtitle: Text(user.emailVerified ? 'Đã xác minh' : 'Chưa xác minh',
                    style: TextStyle(color: user.emailVerified ? Colors.green.shade700 : colors.gray600, fontSize: 14.0)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Tùy chọn',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
        ),
        const SizedBox(height: 10),
        Card(
          color: Colors.white,
          elevation: 6.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red.shade700),
                title: Text('Đăng xuất',
                    style: TextStyle(color: Colors.red.shade700, fontWeight: FontWeight.w500, fontSize: 16.0)),
                onTap: _signOut,
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Giao diện khi người dùng CHƯA đăng nhập (chỉ có nút đăng nhập)
  Widget _buildLoggedOutUserInfo(BuildContext context, dynamic colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Tài Khoản',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
        const SizedBox(height: 10),
        Card(
          color: Colors.white,
          elevation: 6.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.login, color: colors.gray600),
                title: Text('Đăng nhập',
                    style: TextStyle(color: colors.blackCustom, fontWeight: FontWeight.w500, fontSize: 16.0)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16, color: colors.gray400),
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.authWrapperRoute);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}