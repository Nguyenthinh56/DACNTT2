// Model cho thông tin cơ bản của một loại rau củ từ database backend
class VegetableBasicInfo {
  final int id; // Tương ứng với class_index trong database
  final String vietnameseName; // Tên tiếng Việt
  final String? imageUrl;

  VegetableBasicInfo({
    required this.id,
    required this.vietnameseName,
    this.imageUrl,
  });

  // Phương thức factory để tạo đối tượng VegetableBasicInfo từ JSON (Map)
  factory VegetableBasicInfo.fromJson(Map<String, dynamic> json) {
    return VegetableBasicInfo(
      id: json['id'] as int,
      vietnameseName: json['vietnamese_name'] as String,
      imageUrl: json['image_url'] as String,
    );
  }
}

