import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc
import '../presentation/vegetable_home_screen/vegetable_home_screen.dart';
import '../presentation/vegetable_classifier_screen.dart';
import '../presentation/personal_information_screen.dart';
import '../presentation/camera_capture_screen.dart';
import '../presentation/history_screen.dart';
import '../presentation/vegetable_home_screen/bloc/vegetable_home_bloc.dart';
import '../presentation/models/vegetable_home_model.dart';
import '../presentation/vegetable_info_screen.dart';
import '../presentation/meal_info_screen.dart';
import '../presentation/vegetable_search_screen.dart';
import 'auth_wrapper.dart';

class AppRoutes {
  static const String vegetableHomeScreen = '/vegetable_home_screen';
  static const String vegetableClassifierScreen = '/vegetable_classifier_screen';
  static const String personalInformationScreen = '/personal_information_screen';
  static const String cameraCaptureScreen = '/camera_capture_screen';
  static const String loginScreen = '/login_screen';
  static const String historyScreen = '/history_screen';
  static const String vegetableInfoScreen = '/vegetable_info_screen';
  static const String mealInfoScreen = '/meal_info_screen';
  static const String vegetableSearchScreen = '/vegetable_search_screen';
  static const String authWrapperRoute = '/auth_wrapper';

  static Map<String, WidgetBuilder> get routes => {
    vegetableHomeScreen: (context) {
      // Bọc VegetableHomeScreen bằng BlocProvider
      return BlocProvider<VegetableHomeBloc>(
        create: (context) => VegetableHomeBloc(
          VegetableHomeState(vegetableHomeModel: VegetableHomeModel()),
        )..add(VegetableHomeInitialEvent()),
        child: VegetableHomeScreen(), // VegetableHomeScreen là con của BlocProvider
      );
    },
    vegetableClassifierScreen: (context) {
      final args = ModalRoute.of(context)!.settings.arguments;
      // Truyền arguments (imageBytes) đến VegetableClassifierScreen
      return VegetableClassifierScreen(imageBytes: args as Uint8List?);
    },
    personalInformationScreen: PersonalInformationScreen.builder,
    cameraCaptureScreen: CameraCaptureScreen.builder,
    historyScreen: HistoryScreen.builder,
    vegetableInfoScreen: VegetableInfoScreen.builder,
    mealInfoScreen: MealInfoScreen.builder,
    vegetableSearchScreen: VegetableSearchScreen.builder,
    authWrapperRoute: (context) => const AuthWrapper(),
  };
}