import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/featured_vegetable_model.dart';

class FeaturedVegetableItemWidget extends StatelessWidget {
  const FeaturedVegetableItemWidget({
    Key? key,
    required this.vegetable,
    this.onTap,
  }) : super(key: key);

  final FeaturedVegetableModel vegetable;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: CustomImageView(
            imagePath: vegetable.image,
            height: 70.h,
            width: 98.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
