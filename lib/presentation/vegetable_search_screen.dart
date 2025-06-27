import 'package:fe/presentation/models/vegetable_db_model.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/search_result_item_widget.dart';
import '../../core/utils/vegetable_db_api_service.dart';

class VegetableSearchScreen extends StatefulWidget {
  // Nhận danh sách VegetableBasicInfo làm gợi ý ban đầu (từ Home Screen)
  final List<VegetableBasicInfo>? initialSuggestions;

  const VegetableSearchScreen({
    super.key,
    this.initialSuggestions,
  });

  static Widget builder(BuildContext context) {
    // Lấy arguments được truyền khi điều hướng
    final args = ModalRoute.of(context)!.settings.arguments;
    // Kiểm tra và truyền arguments (danh sách gợi ý ban đầu)
    return VegetableSearchScreen(
        initialSuggestions: args is List<VegetableBasicInfo> ? args : null);
  }

  @override
  State<VegetableSearchScreen> createState() => _VegetableSearchScreenState();
}

class _VegetableSearchScreenState extends State<VegetableSearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Danh sách hiển thị (gợi ý ban đầu hoặc kết quả tìm kiếm)
  List<VegetableBasicInfo> _currentSuggestions = [];
  // Danh sách tất cả rau củ từ backend
  List<VegetableBasicInfo> _allVegetables = [];

  // Instance của VegetableDbApiService để gọi API
  final VegetableDbApiService _apiService = VegetableDbApiService();

  @override
  void initState() {
    super.initState();
    // Khởi tạo danh sách gợi ý ban đầu nếu có
    _currentSuggestions = widget.initialSuggestions ?? [];
    _searchController.addListener(_onSearchTextChanged);
    _fetchAllVegetables(); // Fetch tất cả rau củ khi màn hình được tạo
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchTextChanged);
    _searchController.dispose();
    super.dispose();
  }

  // Hàm fetch dữ liệu tất cả rau củ từ API
  Future<void> _fetchAllVegetables() async {
    try {
      final allVegetables = await _apiService.fetchRandomVegetables();
      setState(() {
        _allVegetables = allVegetables;
        if (widget.initialSuggestions == null || widget.initialSuggestions!.isEmpty) {
          _currentSuggestions = allVegetables;
        }
      });
    } catch (e) {
      debugPrint('Error fetching all vegetables in search screen: $e');
    }
  }

  // Hàm xử lý khi text trong search bar thay đổi, gọi API tìm kiếm rau củ với từ khóa cập nhật.
  void _onSearchTextChanged() {
    final query = _searchController.text.trim();
    if (query.isEmpty) {
      // Nếu ô tìm kiếm rỗng, hiển thị lại danh sách gợi ý ban đầu (hoặc toàn bộ nếu không có gợi ý)
      setState(() {
        _currentSuggestions = widget.initialSuggestions ?? _allVegetables;
      });
    } else {
      _apiService.searchVegetables(query).then((result) {
        setState(() {
          _currentSuggestions = result;
        });
      }).catchError((error) {
        debugPrint('Lỗi tìm kiếm rau củ: $error');
        setState(() {
          _currentSuggestions = [];
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tìm kiếm bất cứ rau củ nào bạn muốn'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        // Sử dụng EdgeInsets.symmetric với getter .h
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        child: Column(
          children: [
            // Search bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Nhập tên rau củ...',
                prefixIcon: const Icon(Icons.search),

                // Thêm nút chụp ảnh ở cuối thanh tìm kiếm
                suffixIcon: IconButton(
                  icon: const Icon(Icons.camera_alt),
                  color: Colors.grey[600],
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    NavigatorService.pushNamed(AppRoutes.cameraCaptureScreen);
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.h),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.h),
              ),
            ),
            SizedBox(height: 16.h), // Khoảng cách giữa search bar và danh sách kết quả

            // Hiển thị danh sách kết quả/gợi ý
            Expanded(
              child: _currentSuggestions.isEmpty && _searchController.text.isNotEmpty
                  ? const Center(child: Text('Không tìm thấy kết quả phù hợp.'))
                  : ListView.separated(
                itemCount: _currentSuggestions.length,
                separatorBuilder: (context, index) =>
                    SizedBox(height: 12.h),
                itemBuilder: (context, index) {
                  final vegetable = _currentSuggestions[index];
                  // Sử dụng InkWell để cho phép nhấn vào mục kết quả,
                  // điều hướng đến màn hình thông tin rau củ khi người dùng bấm.
                  return InkWell(
                    onTap: () {
                      // Điều hướng đến màn hình chi tiết rau củ,
                      // truyền 'classIndex' (có giá trị vegetable.id) và 'tabIndex'
                      NavigatorService.pushNamed(
                        AppRoutes.vegetableInfoScreen,
                        arguments: {
                          'classIndex': vegetable.id,
                          'tabIndex': 0,
                        },
                      );
                    },
                    child: SearchResultItemWidget(
                      vegetable: vegetable,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
