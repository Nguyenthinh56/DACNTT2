import 'package:flutter/material.dart';
import 'vegetable_home_screen/models/meal_details_model.dart'; // Import model chi tiết món ăn
import 'vegetable_home_screen/widgets/bottom_navigation_bar_widget.dart';
import 'vegetable_home_screen/models/meal_suggestion_model.dart';
import 'vegetable_home_screen/widgets/meal_suggestion_card_widget.dart';
import '../../../core/app_export.dart';

class MealInfoScreen extends StatelessWidget {
  // Nhận thông tin chi tiết về món ăn thông qua constructor
  final MealDetails mealDetails;
  // Nhận index của tab hiện tại từ màn hình gọi
  final int initialTabIndex;
  // Nhận danh sách các món ăn gợi ý liên quan (danh sách đầy đủ từ màn hình trước)
  final List<MealSuggestionModel>? relatedMealSuggestions;


  const MealInfoScreen({
    super.key,
    required this.mealDetails,
    this.initialTabIndex = 0, // Mặc định là 0 nếu không được truyền
    this.relatedMealSuggestions, // Danh sách món liên quan là tùy chọn
  });

  // Phương thức builder (nếu bạn muốn sử dụng định tuyến đặt tên)
  static Widget builder(BuildContext context) {
    // Lấy arguments được truyền khi điều hướng
    final args = ModalRoute.of(context)!.settings.arguments;

    // Kiểm tra và cast arguments
    if (args is Map) {
      final MealDetails? details = args['details'] as MealDetails?;
      final int? tabIndex = args['tabIndex'] as int?;
      // Lấy danh sách món ăn liên quan từ arguments
      final List<MealSuggestionModel>? relatedMeals = args['relatedMeals'] as List<MealSuggestionModel>?;


      if (details != null) {
        return MealInfoScreen(
          mealDetails: details,
          initialTabIndex: tabIndex ?? 0, // Sử dụng index được truyền hoặc mặc định là 0
          relatedMealSuggestions: relatedMeals, // Truyền danh sách món liên quan
        );
      }
    } else if (args is MealDetails) {
      // Xử lý trường hợp arguments chỉ là MealDetails (tương thích ngược)
      // Trong trường hợp này, không có thông tin món liên quan được truyền
      return MealInfoScreen(
        mealDetails: args,
        initialTabIndex: 0, // Mặc định là 0
        relatedMealSuggestions: null, // Không có món liên quan
      );
    }


    // Xử lý trường hợp không có arguments hoặc arguments sai kiểu
    return Scaffold(
      appBar: AppBar(title: const Text('Lỗi')),
      body: const Center(child: Text('Không thể tải thông tin món ăn.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Sử dụng initialTabIndex được truyền vào cho currentIndex
    final int currentIndex = initialTabIndex;

    // Lọc danh sách các món ăn liên quan (loại bỏ món hiện tại)
    // Sử dụng where và toList để tạo danh sách mới
    final List<MealSuggestionModel> relatedMeals = (relatedMealSuggestions ?? [])
        .where((meal) => meal.title != mealDetails.name) // So sánh theo tên (có thể cần ID duy nhất sau này)
        .toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(mealDetails.name), // Tiêu đề là tên món ăn
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Nút quay lại
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Hiển thị ảnh món ăn ---
              Center( // Căn giữa ảnh
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    mealDetails.imagePath,
                    height: 250, // Chiều cao cố định cho ảnh
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 250,
                        color: Colors.grey[300],
                        child: Icon(Icons.fastfood, size: 120, color: Colors.grey[600]),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24), // Khoảng cách sau ảnh
              // --------------------------

              // Mô tả
              Text(
                'Mô tả:',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                mealDetails.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Nguyên liệu
              Text(
                'Nguyên liệu:',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: mealDetails.ingredients.map((ingredient) => Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text('- $ingredient', style: const TextStyle(fontSize: 16)),
                )).toList(),
              ),
              const SizedBox(height: 24),

              // Cách làm
              Text(
                'Cách làm:',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: mealDetails.instructions.asMap().entries.map((entry) {
                  int index = entry.key;
                  String instruction = entry.value;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text('${index + 1}. $instruction', style: const TextStyle(fontSize: 16)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),

              // --- Phần Các món ăn liên quan ---
              if (relatedMeals.isNotEmpty) // Chỉ hiển thị nếu có món liên quan
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Các món ăn liên quan:',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 148, // Chiều cao cố định cho danh sách ngang
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal, // Cuộn ngang
                        itemCount: relatedMeals.length,
                        separatorBuilder: (context, index) => const SizedBox(width: 16), // Khoảng cách giữa các item
                        itemBuilder: (context, index) {
                          final relatedMeal = relatedMeals[index];
                          // Bọc card món ăn liên quan bằng InkWell để có thể nhấn vào
                          return InkWell(
                            onTap: () {
                              // Tạo dữ liệu chi tiết món ăn giả lập từ gợi ý liên quan
                              final relatedMealDetails = MealDetails.placeholder(
                                relatedMeal.title ?? 'Món ăn liên quan', // Tên món ăn
                                relatedMeal.image ?? ImageConstant.imgImageNotFound, // Đường dẫn ảnh
                              );
                              // Điều hướng đến màn hình thông tin món ăn liên quan
                              // Sử dụng pushNamed để giữ lại trạng thái hiện tại và có thể quay lại món ăn trước đó
                              Navigator.pushNamed(
                                context,
                                AppRoutes.mealInfoScreen,
                                // Truyền dữ liệu chi tiết món ăn liên quan, index hiện tại, VÀ DANH SÁCH GỢI Ý ĐẦY ĐỦ
                                arguments: {
                                  'details': relatedMealDetails,
                                  'tabIndex': currentIndex, // Truyền index hiện tại của MealInfoScreen
                                  'relatedMeals': relatedMealSuggestions, // <-- Truyền lại danh sách gợi ý đầy đủ
                                },
                              );
                            },
                            child: MealSuggestionCardWidget( // Sử dụng MealSuggestionCardWidget
                              mealSuggestion: relatedMeal,
                              // onTap đã được xử lý bởi InkWell bên ngoài
                              // onTap: () {},
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              // ---------------------------------
            ],
          ),
        ),
      ),
      // Thêm BottomNavigationBarWidget
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: currentIndex),
    );
  }
}

