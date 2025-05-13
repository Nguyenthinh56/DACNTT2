class ImageConstant {
  // Đường dẫn cơ sở (base path) cho tất cả các tài nguyên hình ảnh
  static String _basePath = 'assets/images/';

  // Ảnh này có thể được sử dụng làm ảnh dự phòng (fallback) khi ảnh chính không tải được hoặc không tồn tại.
  static String imgPlaceholder = '${_basePath}placeholder.png';

  // Vegetable Home Screen
  // "static String" lưu trữ đường dẫn đầy đủ đến các tệp ảnh cụ thể
  static String imgBisearch = '${_basePath}img_bisearch.svg'; // tìm kiếm
  static String imgFrame2109 = '${_basePath}img_frame_2109.svg';
  static String imgGroup12 = '${_basePath}img_group_12.svg'; // tên người dùng
  static String imgGroup4 = '${_basePath}img_group_4.svg'; // tên người dùng
  static String imgHome = '${_basePath}img_home.svg'; // icon Home
  static String imgProfile = '${_basePath}img_profile.svg'; // icon profile
  static String imgRectangle3 = '${_basePath}img_rectangle_3.png'; // giỏ rau củ

  // Vegetable Home Screen Screen
  static String imgImage1 = '${_basePath}img_image_1.png'; // rau muong xao toi
  static String imgImage2 = '${_basePath}img_image_2.png'; // súp rau củ
  static String imgImage3 = '${_basePath}img_image_3.png'; // bắp cải
  static String imgImage4 = '${_basePath}img_image_4.png'; // cà chua
  static String imgImage5 = '${_basePath}img_image_5.png'; // cà tím

  // Custom Image View Screen
  static String imgImageNotFound = '${_basePath}image_not_found.png'; // đường dẫn đến ảnh 'không tìm thấy ảnh'
}
