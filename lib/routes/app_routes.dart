import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc

import '../presentation/vegetable_home_screen/vegetable_home_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/vegetable_classifier_screen.dart';
import '../presentation/personal_information_screen.dart';
import '../presentation/camera_capture_screen.dart';
import '../presentation/login_screen.dart';
import '../presentation/history_screen.dart';
import '../presentation/vegetable_home_screen/bloc/vegetable_home_bloc.dart';
import '../presentation/vegetable_home_screen/models/vegetable_home_model.dart';
import '../presentation/vegetable_info_screen.dart';
import '../presentation/meal_info_screen.dart';

class AppRoutes {
  static const String vegetableHomeScreen = '/vegetable_home_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String vegetableClassifierScreen = '/vegetable_classifier_screen';
  static const String personalInformationScreen = '/personal_information_screen';
  static const String cameraCaptureScreen = '/camera_capture_screen';
  static const String loginScreen = '/login_screen';
  static const String historyScreen = '/history_screen';
  static const String vegetableInfoScreen = '/vegetable_info_screen';
  static const String mealInfoScreen = '/meal_info_screen'; // Thêm tuyến đường mới
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
    vegetableHomeScreen: (context) {
      // Bọc VegetableHomeScreen bằng BlocProvider tại đây
      return BlocProvider<VegetableHomeBloc>(
        create: (context) => VegetableHomeBloc(
          VegetableHomeState(vegetableHomeModel: VegetableHomeModel()),
        )..add(VegetableHomeInitialEvent()),
        child: VegetableHomeScreen(), // VegetableHomeScreen là con của BlocProvider
      );
    },
    appNavigationScreen: AppNavigationScreen.builder,
    vegetableClassifierScreen: (context) {
      final args = ModalRoute.of(context)!.settings.arguments;
      // Truyền arguments (imageBytes) đến VegetableClassifierScreen
      return VegetableClassifierScreen(imageBytes: args as Uint8List?);
    },
    personalInformationScreen: PersonalInformationScreen.builder,
    cameraCaptureScreen: CameraCaptureScreen.builder,
    loginScreen: LoginScreen.builder,
    historyScreen: HistoryScreen.builder,
    vegetableInfoScreen: (context) { // Định nghĩa builder cho tuyến đường VegetableInfoScreen
      final args = ModalRoute.of(context)!.settings.arguments;
      // VegetableInfoScreen.builder sẽ xử lý việc trích xuất args từ Map
      return VegetableInfoScreen.builder(context);
    },
    mealInfoScreen: (context) { // Định nghĩa builder cho tuyến đường MealInfoScreen
      final args = ModalRoute.of(context)!.settings.arguments;
      // MealInfoScreen.builder sẽ xử lý việc trích xuất args
      return MealInfoScreen.builder(context);
    },
  };
}