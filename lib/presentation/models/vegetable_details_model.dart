import 'meal_suggestion_model.dart';

/// Model cho chi tiết điểm thông tin (các thuộc tính như nutritional_points, preserve_points, select_points)
class PointDetail {
  final int displayOrder;
  final int id;
  final String pointText;
  final int vegetableId;

  PointDetail({
    required this.displayOrder,
    required this.id,
    required this.pointText,
    required this.vegetableId,
  });

  factory PointDetail.fromJson(Map<String, dynamic> json) {
    return PointDetail(
      displayOrder: json['display_order'] as int,
      id: json['id'] as int,
      pointText: json['point_text'] as String,
      vegetableId: json['vegetable_id'] as int,
    );
  }
}

/// Model chứa thông tin chi tiết về một loại rau củ
class VegetableDetails {
  final int classIndex;
  final String description;
  final int id;
  final String? imageUrl;
  final String nutritionalInfo;
  final List<PointDetail> nutritionalPoints;
  final List<PointDetail> preservePoints;
  final List<MealSuggestionModel> recipes;
  final String scientificName;
  final List<PointDetail> selectPoints;
  final String vietnameseName;

  VegetableDetails({
    required this.classIndex,
    required this.description,
    required this.id,
    required this.imageUrl,
    required this.nutritionalInfo,
    required this.nutritionalPoints,
    required this.preservePoints,
    required this.recipes,
    required this.scientificName,
    required this.selectPoints,
    required this.vietnameseName,
  });

  // Factory constructor để chuyển JSON thành đối tượng
  factory VegetableDetails.fromJson(Map<String, dynamic> json) {
    // Xử lý danh sách "recipes"
    List<MealSuggestionModel> recipesList = [];
    if (json['recipes'] != null && json['recipes'] is List) {
      recipesList = (json['recipes'] as List)
          .map((item) => MealSuggestionModel.fromJson(item as Map<String, dynamic>))
          .toList();
    }

    // Xử lý danh sách nutritional_points
    List<PointDetail> nutritionalPointsList = [];
    if (json['nutritional_points'] != null && json['nutritional_points'] is List) {
      nutritionalPointsList = (json['nutritional_points'] as List)
          .map((item) => PointDetail.fromJson(item as Map<String, dynamic>))
          .toList();
    }

    // Xử lý danh sách preserve_points
    List<PointDetail> preservePointsList = [];
    if (json['preserve_points'] != null && json['preserve_points'] is List) {
      preservePointsList = (json['preserve_points'] as List)
          .map((item) => PointDetail.fromJson(item as Map<String, dynamic>))
          .toList();
    }

    // Xử lý danh sách select_points
    List<PointDetail> selectPointsList = [];
    if (json['select_points'] != null && json['select_points'] is List) {
      selectPointsList = (json['select_points'] as List)
          .map((item) => PointDetail.fromJson(item as Map<String, dynamic>))
          .toList();
    }

    return VegetableDetails(
      classIndex: json['class_index'] as int,
      description: json['description'] as String,
      id: json['id'] as int,
      imageUrl: json['image_url'] as String?,
      nutritionalInfo: json['nutritional_info'] as String,
      nutritionalPoints: nutritionalPointsList,
      preservePoints: preservePointsList,
      recipes: recipesList,
      scientificName: json['scientific_name'] as String,
      selectPoints: selectPointsList,
      vietnameseName: json['vietnamese_name'] as String,
    );
  }
}
