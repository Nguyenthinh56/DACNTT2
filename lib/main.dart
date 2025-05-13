import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:camera/camera.dart'; // Import package camera
import './core/utils/navigator_service.dart';
import './core/utils/pref_utils.dart';
import './core/utils/size_utilss.dart';
import './routes/app_routes.dart';

// Biến toàn cục để lưu danh sách các camera có sẵn trên thiết bị.
// Biến này sẽ được khởi tạo trong hàm main().
late List<CameraDescription> cameras;

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

// Hàm main của ứng dụng, được đánh dấu là async vì cần chờ availableCameras().
Future<void> main() async {
  // Đảm bảo các widget Flutter binding được khởi tạo trước khi sử dụng các plugin (như camera).
  WidgetsFlutterBinding.ensureInitialized();

  // Lấy danh sách các camera có sẵn trên thiết bị.
  // Đây là lý do hàm main cần là async.
  try {
    cameras = await availableCameras();
    // Thêm dòng debug print này để kiểm tra số lượng camera tìm thấy
    debugPrint('Tìm thấy ${cameras.length} camera khả dụng.');
    if (cameras.isEmpty) {
      debugPrint('Lỗi: Danh sách camera trống sau khi gọi availableCameras().');
    }

  } on CameraException catch (e) {
    // Xử lý lỗi nếu không thể truy cập camera (ví dụ: không có quyền hoặc không tìm thấy camera).
    debugPrint('Lỗi khi lấy danh sách camera: ${e.description}');
  }

  // Đặt hướng màn hình ưu tiên (chỉ cho phép hướng dọc).
  // Vẫn giữ logic này.
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]).then((value) {
    // Khởi tạo PrefUtils (tiện ích quản lý cài đặt/dữ liệu ưu tiên).
    PrefUtils().init();
    // Chạy ứng dụng Flutter.
    runApp(MyApp()); // <-- runApp chỉ chạy MyApp
  });
}

// Widget gốc của ứng dụng.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sizer giúp làm cho giao diện responsive (thích ứng với kích thước màn hình).
    return Sizer(
      builder: (context, orientation, deviceType) {
        // MaterialApp là widget cung cấp các tính năng Material Design cơ bản.
        return MaterialApp(
          title: 'kangg_s_application', // Tiêu đề ứng dụng
          // color: Colors.white, // <-- Có thể bỏ màu này ở đây nếu Stack trong builder đã xử lý nền
          // Gán GlobalKey cho ScaffoldMessengerState để có thể hiển thị SnackBar từ bất kỳ đâu.
          scaffoldMessengerKey: globalMessengerKey,
          // Builder để cấu hình MediaQuery và bọc Navigator bằng Stack
          builder: (context, child) { // <-- Sử dụng builder của MaterialApp
            return Stack( // <-- Stack nằm bên trong MaterialApp
              children: [
                Container( // <-- Container màu trắng lấp đầy toàn bộ không gian
                  color: Colors.white,
                ),
                child!, // <-- Navigator (chứa các màn hình) nằm trên lớp nền trắng
              ],
            );
          },
          // Gán GlobalKey cho NavigatorService để quản lý điều hướng tập trung.
          navigatorKey: NavigatorService.navigatorKey,
          debugShowCheckedModeBanner: false, // Ẩn banner debug
          // Cấu hình ủy quyền bản địa hóa (localization delegates).
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // Cấu hình các ngôn ngữ được hỗ trợ.
          supportedLocales: [Locale('en', '')], // Hỗ trợ tiếng Anh
          // Định nghĩa tuyến đường ban đầu khi ứng dụng khởi động.
          initialRoute: AppRoutes.vegetableHomeScreen, // <-- Giữ lại initialRoute
          // Map các tuyến đường (route names) với các widget màn hình tương ứng.
          routes: AppRoutes.routes, // <-- Giữ lại toàn bộ routes
        );
      },
    );
  }
}