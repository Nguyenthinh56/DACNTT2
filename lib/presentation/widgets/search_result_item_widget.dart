import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/vegetable_db_model.dart';

class SearchResultItemWidget extends StatelessWidget {
  // Nhận VegetableBasicInfo từ backend
  const SearchResultItemWidget({
    Key? key,
    required this.vegetable, // <-- Nhận VegetableBasicInfo
    this.onTap,
  }) : super(key: key);

  final VegetableBasicInfo vegetable; // <-- Sử dụng VegetableBasicInfo
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // Lấy thông tin cần hiển thị từ VegetableBasicInfo
    // Lưu ý: VegetableBasicInfo từ backend hiện tại không có thông tin giá và đơn vị
    // Nếu bạn muốn hiển thị giá, bạn cần cập nhật backend API để trả về thông tin giá
    // trong endpoint /vegetables/ hoặc fetch giá riêng.
    final String? imageUrl = vegetable.imageUrl; // <-- Lấy imageUrl từ VegetableBasicInfo
    final String? name = vegetable.vietnameseName; // <-- Lấy vietnameseName từ VegetableBasicInfo
    // final double? displayPrice = null; // Không có giá trong VegetableBasicInfo
    // final String? unit = null; // Không có đơn vị trong VegetableBasicInfo


    return InkWell( // Sử dụng InkWell để xử lý thao tác nhấn
      onTap: onTap, // Gán callback onTap
      child: Container( // Container cho mỗi mục kết quả tìm kiếm
        padding: EdgeInsets.symmetric(vertical: 12.h), // Padding theo chiều dọc, sử dụng .h
        child: Row( // Row để xếp hình ảnh và tên theo chiều ngang
          crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa các item theo chiều dọc
          children: [
            Container( // Container cho hình ảnh tròn
              width: 70.h, // Kích thước hình tròn
              height: 70.h, // Kích thước hình tròn
              decoration: BoxDecoration(
                color: appTheme.colorFFF3F4, // Màu nền nhẹ
                shape: BoxShape.circle, // Hình dạng tròn
              ),
              child: Center( // Căn giữa ảnh trong hình tròn
                child: CustomImageView( // Hiển thị ảnh rau củ
                  // Sử dụng đường dẫn ảnh từ VegetableBasicInfo
                  imagePath: imageUrl, // <-- Sử dụng imageUrl
                  height: 60.h, // Kích thước ảnh nhỏ hơn hình tròn
                  width: 60.h, // Kích thước ảnh nhỏ hơn hình tròn
                  fit: BoxFit.contain, // Đảm bảo ảnh nằm gọn
                  // Sử dụng ảnh lỗi mặc định nếu imageUrl null hoặc lỗi
                  placeHolder: ImageConstant.imgImageNotFound, // <-- Sử dụng ảnh lỗi mặc định
                ),
              ),
            ),
            SizedBox(width: 16), // Khoảng cách giữa ảnh và tên
            Expanded( // Expanded để tên rau củ chiếm hết không gian còn lại
              child: Column( // Sử dụng Column để xếp tên và (tùy chọn) giá theo chiều dọc
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
                children: [
                  Text( // Text hiển thị tên rau củ
                    name ?? '', // <-- Sử dụng name (với ?? '' để tránh null)
                    style: TextStyleHelper.instance.body15Medium.copyWith(
                      color: Colors.black, // Màu chữ đen
                      fontSize: 16.fSize, // Kích thước font
                    ),
                    maxLines: 1, // Giới hạn 1 dòng
                    overflow: TextOverflow.ellipsis, // Hiển thị ... nếu tên quá dài
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



