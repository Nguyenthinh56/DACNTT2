// lib/presentation/vegetable_home_screen/widgets/meal_suggestion_card_widget.dart

import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // Đảm bảo đường dẫn đúng
import '../models/meal_suggestion_model.dart'; // Đảm bảo đường dẫn đúng
import '../../../widgets/custom_image_view.dart'; // Đảm bảo đường dẫn đúng

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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
        child: SizedBox(
          width: 140.h, // Chiều rộng cố định cho item
          height: 165.h, // <--- ĐẶT CHIỀU CAO CỐ ĐỊNH CHO ITEM ĐỂ KHẮC PHỤC OVERFLOW
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Giữ min để Column không chiếm hết không gian còn lại nếu có
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.h),
                child: Container(
                  height: 100.h, // Chiều cao ảnh
                  width: 140.h,  // Chiều rộng ảnh (khớp với width của item để cân đối)
                  color: Colors.grey[200],
                  child: CustomImageView(
                    imagePath: mealSuggestion.image ?? ImageConstant.imgImageNotFound,
                    fit: BoxFit.cover,
                    placeHolder: ImageConstant.imgPlaceholder,
                  ),
                ),
              ),
              SizedBox(height: 8.h), // Khoảng cách giữa ảnh và text
              Expanded( // <--- SỬ DỤNG Expanded để Text linh hoạt hơn và tránh overflow
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Text(
                    mealSuggestion.title ?? 'Tên món ăn',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.body14Medium.copyWith(
                      fontSize: 14.h, // Giữ font size này, nó nên đủ nhỏ cho 2 dòng
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(height: 4.h), // <--- Giảm khoảng cách cuối cùng nếu cần thiết
            ],
          ),
        ),
      ),
    );
  }
}