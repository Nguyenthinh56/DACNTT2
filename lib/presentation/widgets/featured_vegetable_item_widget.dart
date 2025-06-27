import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/vegetable_db_model.dart';

class FeaturedVegetableItemWidget extends StatelessWidget {
  const FeaturedVegetableItemWidget({
    Key? key,
    required this.vegetable,
    this.onTap,
  }) : super(key: key);

  final VegetableBasicInfo vegetable;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // Padding để tạo khoảng cách giữa các item
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
        child: SizedBox(
          width: 140.h, // Chiều rộng cố định cho item
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo chiều ngang
            mainAxisSize: MainAxisSize.min,
            children: [
              // Hiển thị ảnh rau củ bằng Container, sử dụng BoxFit.cover
              ClipRRect(
                borderRadius: BorderRadius.circular(8.h),
                child: Container(
                  height: 120.h, // Chiều cao container ảnh
                  width: 140.h,  // Chiều rộng container ảnh
                  color: Colors.grey[200],
                  child: CustomImageView(
                    imagePath: vegetable.imageUrl ?? ImageConstant.imgImageNotFound,
                    fit: BoxFit.cover, // Lấp đầy container, có cắt xén nếu cần
                    placeHolder: ImageConstant.imgPlaceholder,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              // Hiển thị tên rau củ với màu chữ đen
              Text(
                vegetable.vietnameseName,
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body14Medium.copyWith(
                  fontSize: 18.h,
                  color: Colors.black, // Đổi màu chữ
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
