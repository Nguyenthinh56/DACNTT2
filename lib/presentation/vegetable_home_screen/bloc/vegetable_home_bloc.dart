import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // Import app_export (chứa các import chung)
// Import các tệp liên quan đến Bloc này
import '../models/featured_vegetable_model.dart'; // Model cho rau củ nổi bật
import '../models/meal_suggestion_model.dart'; // Model cho gợi ý món ăn
import '../models/vegetable_home_model.dart'; // Model chính của màn hình Home

part 'vegetable_home_event.dart';
part 'vegetable_home_state.dart';


/// A bloc that manages the state of a VegetableHome according to the event that is dispatched to it.
// Lớp VegetableHomeBloc quản lý trạng thái của màn hình Home dựa trên các sự kiện nhận được.
class VegetableHomeBloc extends Bloc<VegetableHomeEvent, VegetableHomeState> {
  // Constructor của Bloc. Nhận trạng thái ban đầu.
  VegetableHomeBloc(VegetableHomeState initialState) : super(initialState) {
    debugPrint('VegetableHomeBloc created'); // Debug print khi Bloc được tạo
    // Đăng ký các handler cho từng loại sự kiện.
    on<VegetableHomeInitialEvent>(_onInitialize); // Xử lý sự kiện khởi tạo
    on<SearchTextChangedEvent>(_onSearchTextChanged); // Xử lý sự kiện khi văn bản tìm kiếm thay đổi
    on<BottomTabChangedEvent>(_onBottomTabChanged); // Xử lý sự kiện khi tab dưới cùng thay đổi
  }

  // Handler cho sự kiện khởi tạo (VegetableHomeInitialEvent).
  // Được gọi khi Bloc được tạo lần đầu.
  _onInitialize(
      VegetableHomeInitialEvent event,
      Emitter<VegetableHomeState> emit,
      ) {
    debugPrint('VegetableHomeInitialEvent received'); // Debug print khi sự kiện Initial được nhận
    // Khởi tạo dữ liệu mẫu cho gợi ý món ăn.
    final List<MealSuggestionModel> mealSuggestions = [
      MealSuggestionModel(image: ImageConstant.imgImage1, title: 'Salad'),
      MealSuggestionModel(
        image: ImageConstant.imgImage2,
        title: 'Vegetable Mix',
      ),
      // TODO: Thêm các gợi ý món ăn khác nếu có
    ];

    // Khởi tạo dữ liệu mẫu cho rau củ nổi bật.
    final List<FeaturedVegetableModel> featuredVegetables = [
      FeaturedVegetableModel(image: ImageConstant.imgImage3, name: 'Cabbage'),
      FeaturedVegetableModel(image: ImageConstant.imgImage4, name: 'Tomatoes'),
      FeaturedVegetableModel(image: ImageConstant.imgImage5, name: 'Eggplant'),
      // TODO: Thêm các loại rau củ nổi bật khác nếu có
    ];

    // Khởi tạo TextEditingController cho thanh tìm kiếm.
    TextEditingController searchController = TextEditingController();

    // Phát ra trạng thái mới với dữ liệu đã khởi tạo.
    emit(
      state.copyWith(
        searchController: searchController,
        mealSuggestions: mealSuggestions,
        featuredVegetables: featuredVegetables,
        // selectedTabIndex: 0, // Đặt tab ban đầu là Home (index 0) nếu cần
      ),
    );
    debugPrint('VegetableHomeBloc state emitted after initialization'); // Debug print sau khi emit trạng thái
  }

  // Handler cho sự kiện khi văn bản tìm kiếm thay đổi (SearchTextChangedEvent).
  _onSearchTextChanged(
      SearchTextChangedEvent event,
      Emitter<VegetableHomeState> emit,
      ) {
    debugPrint('SearchTextChangedEvent received: ${event.searchText}'); // Debug print khi sự kiện SearchText được nhận
    // Cập nhật trạng thái với văn bản tìm kiếm mới.
    emit(state.copyWith(searchText: event.searchText));
    debugPrint('VegetableHomeBloc state emitted after search text change'); // Debug print sau khi emit trạng thái
    // TODO: Thêm logic lọc dữ liệu hiển thị dựa trên searchText nếu cần.
  }

  // Handler cho sự kiện khi tab dưới cùng thay đổi (BottomTabChangedEvent).
  _onBottomTabChanged(
      BottomTabChangedEvent event,
      Emitter<VegetableHomeState> emit,
      ) {
    debugPrint('BottomTabChangedEvent received: index ${event.tabIndex}'); // Debug print khi sự kiện BottomTab được nhận
    // Cập nhật trạng thái với index của tab được chọn.
    emit(state.copyWith(selectedTabIndex: event.tabIndex));
    debugPrint('VegetableHomeBloc state emitted after tab change'); // Debug print sau khi emit trạng thái

    // --- Logic điều hướng tại đây ---
    // Kiểm tra nếu tab được chọn là tab Scan (index 1).
    if (event.tabIndex == 1) {
      debugPrint('Navigating to CameraCaptureScreen'); // Debug print trước khi điều hướng
      // Sử dụng NavigatorService để điều hướng đến màn hình chụp ảnh/chọn ảnh mới.
      NavigatorService.pushNamed(AppRoutes.cameraCaptureScreen);
    }
    // Kiểm tra nếu tab được chọn là tab Profile (index 2).
    else if (event.tabIndex == 2) {
      debugPrint('Navigating to PersonalInformationScreen'); // Debug print trước khi điều hướng
      // Sử dụng NavigatorService để điều hướng đến màn hình Thông tin cá nhân.
      NavigatorService.pushNamed(AppRoutes.personalInformationScreen);
    }
    // Kiểm tra nếu tab được chọn là tab History (index 3).
    else if (event.tabIndex == 3) {
      debugPrint('Navigating to HistoryScreen'); // Debug print trước khi điều hướng
      NavigatorService.pushNamed(AppRoutes.historyScreen);
    }
    // TODO: Thêm logic điều hướng cho các index khác nếu cần.
  }

// TODO: Thêm các handler khác cho các sự kiện khác nếu cần.
}
