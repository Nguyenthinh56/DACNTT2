/// Model class for meal suggestion items in the horizontal scrollable list
class MealSuggestionModel {
  final int? id;
  final String? title;
  final String? image; // URL ảnh món ăn

  MealSuggestionModel({this.title, this.image, this.id});

  factory MealSuggestionModel.fromJson(Map<String, dynamic> json) {
    return MealSuggestionModel(
      id: json['id'] as int?,
      title: json['name'] as String?,
      image: json['image_url'] as String?,
    );
  }
}
