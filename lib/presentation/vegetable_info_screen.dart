import 'package:fe/presentation/models/vegetable_details_model.dart';
import 'package:fe/presentation/widgets/meal_suggestion_card_widget.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'widgets/bottom_navigation_bar_widget.dart';
import '../../widgets/custom_image_view.dart';
import '../core/utils/vegetable_db_api_service.dart';
import '../core/app_export.dart';

// Chuyển thành StatefulWidget để quản lý trạng thái tải dữ liệu
class VegetableInfoScreen extends StatefulWidget {
  // Nhận classIndex (id) của rau củ cần hiển thị chi tiết
  final int classIndex;
  // Thêm tham số để nhận dữ liệu byte của ảnh (từ màn hình phân loại)
  final Uint8List? vegetableImageBytes;
  // Thêm tham số để nhận đường dẫn ảnh (từ màn hình home/tìm kiếm)
  final String? vegetableImagePath;
  // Thêm tham số để nhận index của tab hiện tại từ màn hình gọi
  final int initialTabIndex;

  const VegetableInfoScreen({
    super.key,
    required this.classIndex,
    this.vegetableImageBytes,
    this.vegetableImagePath,
    this.initialTabIndex = 0,
  });

  // Phương thức builder (nếu bạn muốn sử dụng định tuyến đặt tên)
  static Widget builder(BuildContext context) {
    // Lấy arguments được truyền khi điều hướng
    final args = ModalRoute.of(context)!.settings.arguments;

    // Kiểm tra và cast arguments
    if (args is Map) {
      // Lấy classIndex từ arguments
      final int? classIndex = args['classIndex'] as int?;
      final Uint8List? imageBytes = args['imageBytes'] as Uint8List?;
      final String? imagePath = args['imagePath'] as String?;
      final int? tabIndex = args['tabIndex'] as int?;

      // Kiểm tra xem classIndex có tồn tại không
      if (classIndex != null) {
        return VegetableInfoScreen(
          classIndex: classIndex,
          vegetableImageBytes: imageBytes,
          vegetableImagePath: imagePath,
          initialTabIndex: tabIndex ?? 0,
        );
      }
    }

    // Trả về màn hình lỗi nếu không nhận được classIndex hợp lệ
    return Scaffold(
      appBar: AppBar(title: const Text('Lỗi')),
      body: const Center(child: Text('Không tìm thấy thông tin rau củ.')),
    );
  }

  @override
  State<VegetableInfoScreen> createState() => _VegetableInfoScreenState();
}

class _VegetableInfoScreenState extends State<VegetableInfoScreen> {
  // Biến để lưu thông tin chi tiết rau củ sau khi fetch
  VegetableDetails? _vegetableDetails;
  bool _isLoading = true; // Biến cờ để theo dõi trạng thái tải dữ liệu
  String _errorMessage = ''; // Biến để lưu thông báo lỗi

  // Instance của VegetableDbApiService để gọi API
  final VegetableDbApiService _apiService = VegetableDbApiService();

  // Index cho tab hiện tại (nhận từ arguments)
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    // Khởi tạo _selectedIndex từ initialTabIndex được truyền vào
    _selectedIndex = widget.initialTabIndex;
    // Bắt đầu fetch dữ liệu chi tiết rau củ khi màn hình được tạo
    _fetchVegetableDetails();
  }

  // Định nghĩa hàm _buildCardSection để tái sử dụng cho các phần thông tin
  Widget _buildCardSection({
    required String title,
    required Widget content,
  }) {
    // Sử dụng màu xanh lá cây rất nhạt theo yêu cầu
    final Color cardBackgroundColor = const Color(0xFFF3FBF4); // Màu xanh lá cây rất nhạt
    final colors = ThemeHelper().themeColor(); // Lấy theme colors

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: cardBackgroundColor, // <--- Đã đổi màu nền của card ở đây
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(color: Colors.white, width: 1.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.fSize,
              fontWeight: FontWeight.bold,
              color: colors.blackCustom, // Sử dụng màu từ theme
            ),
          ),
          SizedBox(height: 8.h),
          content,
        ],
      ),
    );
  }

  // Phương thức fetch dữ liệu chi tiết rau củ từ API
  Future<void> _fetchVegetableDetails() async {
    try {
      // Đặt trạng thái loading là true
      setState(() {
        _isLoading = true;
        _errorMessage = ''; // Xóa thông báo lỗi cũ
      });

      // Gọi API lấy thông tin chi tiết dựa trên classIndex
      final detailedInfo = await _apiService.fetchVegetableDetailedInfo(widget.classIndex);

      // Cập nhật state với dữ liệu nhận được và đặt loading là false
      setState(() {
        _vegetableDetails = detailedInfo;
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error fetching vegetable details in info screen: $e');
      // Cập nhật state với thông báo lỗi và đặt loading là false
      setState(() {
        _errorMessage = 'Không thể tải thông tin chi tiết: $e';
        _isLoading = false;
      });
      // TODO: Hiển thị thông báo lỗi cho người dùng (ví dụ: SnackBar)
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ThemeHelper().themeColor(); // Lấy theme colors

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _vegetableDetails?.vietnameseName ?? 'Thông tin rau củ',
          style: TextStyle(color: colors.blackCustom),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.blackCustom),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Nội dung chính của màn hình
          SafeArea(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _errorMessage.isNotEmpty
                ? Center(child: Text(_errorMessage, textAlign: TextAlign.center, style: TextStyle(color: Colors.red)))
                : _vegetableDetails == null
                ? const Center(child: Text('Không tìm thấy thông tin chi tiết.'))
                : SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- Logic hiển thị ảnh rau củ ---
                  if (widget.vegetableImageBytes != null)
                    Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.h),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.memory(
                        widget.vegetableImageBytes!,
                        fit: BoxFit.cover,
                      ),
                    )
                  else if (_vegetableDetails!.imageUrl != null)
                    CustomImageView(
                      imagePath: _vegetableDetails!.imageUrl,
                      height: 200.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(12.h),
                      placeHolder: ImageConstant.imgPlaceholder,
                    )
                  else
                    CustomImageView(
                      imagePath: ImageConstant.imgPlaceholder,
                      height: 200.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(12.h),
                    ),
                  // --- Kết thúc logic hiển thị ảnh ---

                  SizedBox(height: 16.h),

                  // Hiển thị tên khoa học (nếu có)
                  if (_vegetableDetails!.scientificName.isNotEmpty)
                    Text(
                      'Tên khoa học: ${_vegetableDetails!.scientificName}',
                      style: TextStyle(
                        fontSize: 16.fSize,
                        fontStyle: FontStyle.italic,
                        color: colors.blackCustom,
                      ),
                    ),
                  SizedBox(height: 8.h),

                  // Card hiển thị Mô tả
                  _buildCardSection(
                    title: 'Mô tả',
                    content: Text(
                      _vegetableDetails!.description,
                      style: TextStyle(
                        fontSize: 16.fSize,
                        color: colors.blackCustom,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 8.h), // Khoảng cách giữa các card

                  // Card hiển thị Thông tin dinh dưỡng
                  _buildCardSection(
                    title: 'Thông tin dinh dưỡng',
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_vegetableDetails!.nutritionalInfo.isNotEmpty)
                          Text(
                            _vegetableDetails!.nutritionalInfo,
                            style: TextStyle(
                              fontSize: 16.fSize,
                              color: colors.blackCustom,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        if (_vegetableDetails!.nutritionalPoints.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: _vegetableDetails!.nutritionalPoints.map((point) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 4.h),
                                  child: Text(
                                    '- ${point.pointText}',
                                    style: TextStyle(
                                      fontSize: 16.fSize,
                                      color: colors.blackCustom,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h), // Khoảng cách giữa các card

                  // Card hiển thị Cách lựa chọn mua sản phẩm tốt
                  _buildCardSection(
                    title: 'Cách lựa chọn để mua được sản phẩm tốt',
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _vegetableDetails!.selectPoints.map((point) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 4.h),
                          child: Text(
                            '- ${point.pointText}',
                            style: TextStyle(
                              fontSize: 16.fSize,
                              color: colors.blackCustom,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 8.h), // Khoảng cách giữa các card

                  // Card hiển thị Cách bảo quản sản phẩm
                  _buildCardSection(
                    title: 'Cách bảo quản sản phẩm tốt cho việc sử dụng',
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _vegetableDetails!.preservePoints.map((point) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 4.h),
                          child: Text(
                            '- ${point.pointText}',
                            style: TextStyle(
                              fontSize: 16.fSize,
                              color: colors.blackCustom,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 16.h), // Khoảng cách sau card cuối cùng

                  // Món ăn liên quan (Đã bọc trong card)
                  if (_vegetableDetails!.recipes.isNotEmpty)
                    _buildCardSection(
                      title: 'Gợi ý món ăn từ rau củ:',
                      content: SizedBox(
                        height: 165.h, // Đảm bảo chiều cao này khớp với MealSuggestionCardWidget
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: _vegetableDetails!.recipes.length,
                          separatorBuilder: (context, index) => SizedBox(width: 12.h),
                          itemBuilder: (context, index) {
                            final meal = _vegetableDetails!.recipes[index];
                            return InkWell(
                              onTap: () {
                                int? mealId = meal.id;
                                if (mealId != null) {
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.mealInfoScreen,
                                    arguments: {
                                      'mealId': mealId,
                                      'tabIndex': _selectedIndex,
                                      'relatedMeals': _vegetableDetails!.recipes,
                                    },
                                  );
                                } else {
                                  debugPrint('Lỗi: ID món ăn liên quan không hợp lệ cho món: ${meal.title}, ID: ${meal.id}');
                                }
                              },
                              child: SizedBox(
                                width: 165.h,
                                child: MealSuggestionCardWidget(
                                  mealSuggestion: meal,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: _selectedIndex),
    );
  }
}