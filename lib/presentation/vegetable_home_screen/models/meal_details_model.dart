// Model chứa thông tin chi tiết về một món ăn
class MealDetails {
  String name;
  String description;
  List<String> ingredients;
  List<String> instructions;
  String imagePath; // Đường dẫn ảnh của món ăn

  MealDetails({
    required this.name,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.imagePath,
  });

  // Phương thức tạo dữ liệu mẫu (placeholder)
  static MealDetails placeholder(String mealName, String imagePath) {
    return MealDetails(
      name: mealName,
      description: 'Đây là mô tả chi tiết về món $mealName. Bạn có thể thêm thông tin đầy đủ tại đây.',
      ingredients: [
        'Nguyên liệu 1',
        'Nguyên liệu 2',
        'Nguyên liệu 3',
      ],
      instructions: [
        'Bước 1: Chuẩn bị nguyên liệu.',
        'Bước 2: Thực hiện các bước chế biến.',
        'Bước 3: Hoàn thành và thưởng thức.',
      ],
      imagePath: imagePath,
    );
  }
}
