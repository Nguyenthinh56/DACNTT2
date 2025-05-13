import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/meal_suggestion_model.dart';

class MealSuggestionCardWidget extends StatelessWidget {
  const MealSuggestionCardWidget({
    Key? key,
    required this.mealSuggestion,
    this.onTap,
  }) : super(key: key);

  final MealSuggestionModel mealSuggestion;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140.h,
        height: 148.h,
        decoration: BoxDecoration(
          color: appTheme.colorFFFFF9,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Center(
          child: CustomImageView(
            imagePath: mealSuggestion.image,
            height: 110.h,
            width: 104.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
