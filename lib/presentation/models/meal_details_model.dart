/// Model cho chi tiết điểm thông tin (các thuộc tính như items, steps, select_points)
// Model cho từng nguyên liệu trong món ăn
class MealIngredient {
  final int id;
  final String itemName;
  final String quantity;
  final String? notes; // Có thể null
  final String? imageUrl; // Có thể null
  final int orderIndex;
  final int recipeId;

  MealIngredient({
    required this.id,
    required this.itemName,
    required this.quantity,
    this.notes,
    this.imageUrl,
    required this.orderIndex,
    required this.recipeId,
  });

  factory MealIngredient.fromJson(Map<String, dynamic> json) {
    return MealIngredient(
      id: json['id'] as int,
      itemName: json['item_name'] as String,
      quantity: json['quantity'] as String,
      notes: json['notes'] as String?,
      imageUrl: json['image_url'] as String?,
      orderIndex: json['order_index'] as int,
      recipeId: json['recipe_id'] as int,
    );
  }
}

// Model cho từng bước hướng dẫn trong món ăn
class MealStep {
  final int id;
  final String stepName;
  final String instructionText;
  final int stepNumber;
  final String? imageUrl; // Có thể null
  final int recipeId;

  MealStep({
    required this.id,
    required this.stepName,
    required this.instructionText,
    required this.stepNumber,
    this.imageUrl,
    required this.recipeId,
  });

  factory MealStep.fromJson(Map<String, dynamic> json) {
    return MealStep(
      id: json['id'] as int,
      stepName: json['step_name'] as String,
      instructionText: json['instruction_text'] as String,
      stepNumber: json['step_number'] as int,
      imageUrl: json['image_url'] as String?,
      recipeId: json['recipe_id'] as int,
    );
  }
}

// Model chứa thông tin chi tiết về một món ăn
class MealDetails {
  final int id;
  final String name;
  final String description;
  final String imagePath; // image_url
  final String prepTime; // prep_time
  final String cookTime; // cook_time
  final String servings; // servings
  final List<MealIngredient> items; // Thay đổi từ List<String>
  final List<MealStep> instructions; // Thay đổi từ List<String> (tên cũ Stringructions)

  MealDetails({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.prepTime,
    required this.cookTime,
    required this.servings,
    required this.items,
    required this.instructions,
  });

  // Factory constructor để tạo MealDetails từ JSON
  factory MealDetails.fromJson(Map<String, dynamic> json) {
    // Xử lý danh sách nguyên liệu (items)
    List<MealIngredient> itemsList = [];
    if (json['items'] != null && json['items'] is List) {
      itemsList = (json['items'] as List)
          .map((itemJson) => MealIngredient.fromJson(itemJson as Map<String, dynamic>))
          .toList();
    }

    // Xử lý danh sách bước hướng dẫn (steps)
    List<MealStep> instructionsList = [];
    if (json['steps'] != null && json['steps'] is List) {
      instructionsList = (json['steps'] as List)
          .map((stepJson) => MealStep.fromJson(stepJson as Map<String, dynamic>))
          .toList();
    }

    return MealDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      imagePath: json['image_url'] as String,
      prepTime: json['prep_time'] as String,
      cookTime: json['cook_time'] as String,
      servings: json['servings'] as String,
      items: itemsList,
      instructions: instructionsList,
    );
  }
}
