import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:camera/camera.dart';

import 'package:firebase_core/firebase_core.dart';

import './core/utils/navigator_service.dart';
import './core/utils/pref_utils.dart';
import './core/utils/size_utils.dart';
import './routes/app_routes.dart';

late List<CameraDescription> cameras;
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  debugPrint('Firebase đã được khởi tạo.');

  try {
    cameras = await availableCameras();
    debugPrint('Tìm thấy ${cameras.length} camera khả dụng.');
    if (cameras.isEmpty) {
      debugPrint('Lỗi: Danh sách camera trống sau khi gọi availableCameras().');
    }
  } on CameraException catch (e) {
    debugPrint('Lỗi khi lấy danh sách camera: ${e.description}');
  }

  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]).then((value) {
    PrefUtils().init();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Ứng dụng nhận dạng rau củ',
          scaffoldMessengerKey: globalMessengerKey,
          builder: (context, child) {
            return Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                child!,
              ],
            );
          },
          navigatorKey: NavigatorService.navigatorKey,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en', '')],
          initialRoute: AppRoutes.vegetableHomeScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}