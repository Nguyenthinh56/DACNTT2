import 'package:flutter/material.dart';
import 'dart:typed_data'; // Import Uint8List
import 'vegetable_home_screen/models/vegetable_details_model.dart'; // Import model chi tiết rau củ
import 'vegetable_home_screen/widgets/bottom_navigation_bar_widget.dart';
import 'vegetable_home_screen/widgets/meal_suggestion_card_widget.dart';
import 'vegetable_home_screen/models/meal_details_model.dart';
import '../../core/app_export.dart';

class VegetableInfoScreen extends StatelessWidget {
  // Nhận thông tin chi tiết về rau củ thông qua constructor
  final VegetableDetails vegetableDetails;
  // Thêm tham số để nhận dữ liệu byte của ảnh (từ màn hình phân loại)
  final Uint8List? vegetableImageBytes;
  // Thêm tham số để nhận đường dẫn ảnh (từ màn hình home)
  final String? vegetableImagePath;
  // Thêm tham số để nhận index của tab hiện tại từ màn hình gọi
  final int initialTabIndex;


  const VegetableInfoScreen({
    super.key,
    required this.vegetableDetails,
    this.vegetableImageBytes, // Tham số ảnh byte là tùy chọn
    this.vegetableImagePath, // Tham số đường dẫn ảnh là tùy chọn
    this.initialTabIndex = 0, // Mặc định là 0 nếu không được truyền
  });

  // Phương thức builder (nếu bạn muốn sử dụng định tuyến đặt tên)
  static Widget builder(BuildContext context) {
    // Lấy arguments được truyền khi điều hướng
    final args = ModalRoute.of(context)!.settings.arguments;

    // Kiểm tra và cast arguments
    if (args is Map) {
      // Giả định arguments là một Map chứa details, imageBytes, imagePath và tabIndex
      final VegetableDetails? details = args['details'] as VegetableDetails?;
      final Uint8List? imageBytes = args['imageBytes'] as Uint8List?;
      final String? imagePath = args['imagePath'] as String?; // Lấy imagePath từ arguments
      final int? tabIndex = args['tabIndex'] as int?;


      if (details != null) {
        return VegetableInfoScreen(
          vegetableDetails: details,
          vegetableImageBytes: imageBytes,
          vegetableImagePath: imagePath, // Truyền imagePath vào constructor
          initialTabIndex: tabIndex ?? 0, // Sử dụng index được truyền hoặc mặc định là 0
        );
      }
    } else if (args is VegetableDetails) {
      // Xử lý trường hợp arguments chỉ là VegetableDetails (tương thích ngược)
      return VegetableInfoScreen(
        vegetableDetails: args,
        initialTabIndex: 0, // Mặc định là 0
      );
    }


    // Xử lý trường hợp không có arguments hoặc arguments sai kiểu
    return Scaffold(
      appBar: AppBar(title: const Text('Lỗi')),
      body: const Center(child: Text('Không thể tải thông tin rau củ.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Sử dụng initialTabIndex được truyền vào cho currentIndex
    final int currentIndex = initialTabIndex;

    // Xác định xem có ảnh để hiển thị không
    final bool hasImageBytes = vegetableImageBytes != null && vegetableImageBytes!.isNotEmpty;
    final bool hasImagePath = vegetableImagePath != null && vegetableImagePath!.isNotEmpty;


    return Scaffold(
      appBar: AppBar(
        title: Text(vegetableDetails.name), // Tiêu đề là tên rau củ
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Quay lại màn hình trước đó (thường là màn hình phân loại hoặc trang chủ)
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Hiển thị ảnh rau củ ---
              if (hasImageBytes || hasImagePath) // Chỉ hiển thị nếu có bytes hoặc path ảnh
                Center( // Căn giữa ảnh
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: hasImageBytes // Ưu tiên hiển thị ảnh từ bytes nếu có
                        ? Image.memory(
                      vegetableImageBytes!,
                      height: 250, // Chiều cao cố định cho ảnh
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 250,
                          height: 250,
                          color: Colors.red[100],
                          child: const Center(
                            child: Text(
                              'Không thể hiển thị ảnh (Bytes)',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          ),
                        );
                      },
                    )
                        : Image.asset( // Hiển thị ảnh từ path nếu không có bytes
                      vegetableImagePath!,
                      height: 250, // Chiều cao cố định cho ảnh
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 250,
                          height: 250,
                          color: Colors.red[100],
                          child: const Center(
                            child: Text(
                              'Không thể hiển thị ảnh (Path)',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              else // Hiển thị placeholder nếu không có ảnh nào
                Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image, size: 120, color: Colors.grey),
                  ),
                ),
              const SizedBox(height: 24), // Khoảng cách sau ảnh
              // --------------------------

              // Thông tin / Mô tả
              Text(
                'Thông tin:',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                vegetableDetails.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Cách chế biến
              Text(
                'Cách chế biến:',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                vegetableDetails.cookingMethods,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Món ăn gợi ý
              Text(
                'Món ăn gợi ý:',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                height: 148, // Chiều cao cố định cho danh sách ngang
                child: ListView.separated(
                  scrollDirection: Axis.horizontal, // Cuộn ngang
                  itemCount: vegetableDetails.mealSuggestions.length,
                  separatorBuilder: (context, index) => const SizedBox(width: 16), // Khoảng cách giữa các item
                  itemBuilder: (context, index) {
                    final meal = vegetableDetails.mealSuggestions[index];
                    // Bọc card món ăn bằng InkWell để có thể nhấn vào
                    return InkWell(
                      onTap: () {
                        // Tạo dữ liệu chi tiết món ăn giả lập từ gợi ý
                        final mealDetails = MealDetails.placeholder(
                          meal.title ?? 'Món ăn', // Tên món ăn (sử dụng ?? để tránh null)
                          // Sử dụng tên hằng số placeholder từ ImageConstant của bạn
                          meal.image ?? ImageConstant.imgImageNotFound, // <-- Đã sửa tên hằng số placeholder
                        );
                        // Điều hướng đến màn hình thông tin món ăn
                        Navigator.pushNamed(
                          context,
                          AppRoutes.mealInfoScreen,
                          // Truyền dữ liệu chi tiết món ăn, index hiện tại (1), VÀ DANH SÁCH GỢI Ý ĐẦY ĐỦ
                          arguments: {
                            'details': mealDetails, // Chi tiết món được chọn
                            'tabIndex': currentIndex, // Index hiện tại của VegetableInfoScreen
                            'relatedMeals': vegetableDetails.mealSuggestions, // <-- Truyền danh sách gợi ý đầy đủ
                          },
                        );
                      },
                      child: MealSuggestionCardWidget( // Sử dụng MealSuggestionCardWidget
                        mealSuggestion: meal,
                        // onTap đã được xử lý bởi InkWell bên ngoài
                        // onTap: () {}, // Có thể giữ lại hoặc xóa tùy thuộc vào MealSuggestionCardWidget
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // Thêm BottomNavigationBarWidget vào màn hình thông tin
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: currentIndex), // Truyền index được nhận
    );
  }

// Hàm hỗ trợ xây dựng card món ăn gợi ý (tương tự như ở Trang chủ)
// Đã xóa hàm _buildMealSuggestionCard vì giờ sử dụng MealSuggestionCardWidget trực tiếp
// Widget _buildMealSuggestionCard(MealSuggestionModel meal) { ... }
}

