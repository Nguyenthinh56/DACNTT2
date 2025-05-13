import 'package:flutter/material.dart';
import '../core/app_export.dart'; // Cần cho appTheme và size_utils (như .h)
import 'vegetable_home_screen/widgets/bottom_navigation_bar_widget.dart';

// Màn hình Thông tin cá nhân / Tài Khoản (tùy trạng thái đăng nhập)
class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  // Phương thức builder tĩnh để sử dụng trong hệ thống định tuyến (AppRoutes).
  static Widget builder(BuildContext context) {
    return const PersonalInformationScreen();
  }

  @override
  _PersonalInformationScreenState createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  bool _isLoggedIn = false; // Giả lập chưa đăng nhập

  @override
  void initState() {
    super.initState();
    // TODO: Thực hiện kiểm tra trạng thái đăng nhập thực tế ở đây
  }

  @override
  Widget build(BuildContext context) {
    final colors = ThemeHelper().themeColor();

    return Scaffold(
      appBar: AppBar(
        title: Text(_isLoggedIn ? 'Thông tin cá nhân' : 'Tài Khoản'),
        centerTitle: true,
        leading: _isLoggedIn ? IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ) : null,
      ),
      body: SafeArea(
        child: _isLoggedIn ? _buildLoggedInView(context, colors) : _buildLoggedOutView(context, colors),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: 2,), // Tái sử dụng widget thanh điều hướng
    );
  }

  // Giao diện khi người dùng ĐÃ đăng nhập
  Widget _buildLoggedInView(BuildContext context, LightCodeColors colors) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundColor: colors.grey200,
            child: Icon(Icons.person, size: 60, color: colors.gray400),
          ),
          const SizedBox(height: 20),
          Text('Tên người dùng', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: colors.blackCustom)),
          const SizedBox(height: 8),
          Text('email@example.com', style: TextStyle(fontSize: 16, color: colors.gray400)),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Thông tin chi tiết', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
          ),
          const SizedBox(height: 10),
          // Thêm thông tin chi tiết của người dùng
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.phone, color: colors.gray400),
                  title: Text('Số điện thoại', style: TextStyle(color: colors.blackCustom)),
                  subtitle: Text('0123 456 789', style: TextStyle(color: colors.gray400)),
                  trailing: Icon(Icons.edit, color: colors.gray400),
                  onTap: () {},
                ),
                Divider(height: 0, color: colors.grey200),
                ListTile(
                  leading: Icon(Icons.location_on, color: colors.gray400),
                  title: Text('Địa chỉ', style: TextStyle(color: colors.blackCustom)),
                  subtitle: Text('Địa chỉ của bạn', style: TextStyle(color: colors.gray400)),
                  trailing: Icon(Icons.edit, color: colors.gray400),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Tùy chọn', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.lock, color: colors.gray400),
                  title: Text('Đổi mật khẩu', style: TextStyle(color: colors.blackCustom)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16, color: colors.gray400),
                  onTap: () {},
                ),
                Divider(height: 0, color: colors.grey200),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.redAccent),
                  title: Text('Đăng xuất', style: TextStyle(color: Colors.redAccent)),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  // Giao diện khi người dùng CHƯA đăng nhập
  Widget _buildLoggedOutView(BuildContext context, LightCodeColors colors) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Tài Khoản', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
          const SizedBox(height: 10),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.login, color: colors.gray400),
                  title: Text('Đăng nhập', style: TextStyle(color: colors.blackCustom)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16, color: colors.gray400),
                  onTap: () async {
                    final result = await NavigatorService.pushNamed(AppRoutes.loginScreen);
                    if (result != null && result is Map<String, dynamic> && result['action'] == 'loggedIn') {
                      setState(() {
                        _isLoggedIn = true;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Thông tin khác', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors.blackCustom)),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.info_outline, color: colors.gray400),
                  title: Text('Về chúng tôi', style: TextStyle(color: colors.blackCustom)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16, color: colors.gray400),
                  onTap: () {},
                ),
                Divider(height: 0, color: colors.grey200),
                ListTile(
                  leading: Icon(Icons.contact_mail_outlined, color: colors.gray400),
                  title: Text('Liên hệ', style: TextStyle(color: colors.blackCustom)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16, color: colors.gray400),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
