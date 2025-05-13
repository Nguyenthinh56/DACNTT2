import '../../../core/app_export.dart'; // Import app_export nếu chứa ImageConstant
import 'meal_suggestion_model.dart';

// Model chứa thông tin chi tiết về một loại rau củ
class VegetableDetails {
  String name;
  String description;
  String cookingMethods;
  // Sử dụng MealSuggestionModel cho danh sách gợi ý món ăn
  List<MealSuggestionModel> mealSuggestions;

  VegetableDetails({
    required this.name,
    required this.description,
    required this.cookingMethods,
    required this.mealSuggestions,
  });

  // Phương thức tạo dữ liệu mẫu (placeholder)
  static VegetableDetails placeholder(String vegetableName) {
    return VegetableDetails(
      name: vegetableName,
      description: 'Đây là thông tin chi tiết về $vegetableName. Bạn có thể thêm mô tả đầy đủ tại đây.',
      cookingMethods: 'Cách chế biến $vegetableName:\n- Luộc\n- Xào\n- Nấu canh',
      // Sử dụng MealSuggestionModel cho dữ liệu mẫu
      mealSuggestions: [
        MealSuggestionModel(image: ImageConstant.imgImage1, title: 'Món 1 từ $vegetableName'),
        MealSuggestionModel(image: ImageConstant.imgImage2, title: 'Món 2 từ $vegetableName'),
        MealSuggestionModel(image: ImageConstant.imgImage3, title: 'Món 3 từ $vegetableName'),
        MealSuggestionModel(image: ImageConstant.imgImage4, title: 'Món 4 từ $vegetableName'),
      ],
    );
  }
}
