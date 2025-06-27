import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../core/utils/vegetable_db_api_service.dart';
import '../../models/meal_suggestion_model.dart';
import '../../models/vegetable_db_model.dart';
import '../../models/vegetable_details_model.dart';
import '../../models/vegetable_home_model.dart';
part 'vegetable_home_event.dart';
part 'vegetable_home_state.dart';

/// A bloc that manages the state of a VegetableHome according to the event that is dispatched to it.
class VegetableHomeBloc extends Bloc<VegetableHomeEvent, VegetableHomeState> {
  // Tạo một instance của VegetableDbApiService
  final VegetableDbApiService _apiService = VegetableDbApiService();

  VegetableHomeBloc(VegetableHomeState initialState) : super(initialState) {
    debugPrint('VegetableHomeBloc created');
    on<VegetableHomeInitialEvent>(_onInitialize);
    on<SearchTextChangedEvent>(_onSearchTextChanged);
    on<BottomTabChangedEvent>(_onBottomTabChanged);
    on<VegetableSelectedEvent>(_onVegetableSelected);
    on<MealSelectedEvent>(_onMealSelected);
  }

  // Handler cho sự kiện khởi tạo (VegetableHomeInitialEvent).
  _onInitialize(
      VegetableHomeInitialEvent event,
      Emitter<VegetableHomeState> emit,
      ) async {
    debugPrint('VegetableHomeInitialEvent received');

    List<MealSuggestionModel> fetchedMealSuggestions = [];
    List<VegetableBasicInfo> fetchedVegetableBasicInfo = [];
    TextEditingController searchController = TextEditingController(); // Khởi tạo một lần

    try {
      // #1: Fetch danh sách món ăn ngẫu nhiên
      fetchedMealSuggestions = await _apiService.fetchRandomMeals();
      debugPrint('Fetched ${fetchedMealSuggestions.length} random meals.');

      // #2: Gọi API để lấy danh sách thông tin cơ bản của rau củ ngẫu nhiên (nổi bật)
      fetchedVegetableBasicInfo = await _apiService.fetchRandomVegetables(); // Đảm bảo bạn có phương thức này trong ApiService
      debugPrint('Fetched ${fetchedVegetableBasicInfo.length} basic vegetable info from API.');

      // Cập nhật state MỘT LẦN DUY NHẤT sau khi tất cả dữ liệu đã được fetch thành công
      emit(state.copyWith(
        mealSuggestions: fetchedMealSuggestions,
        vegetableBasicInfoList: fetchedVegetableBasicInfo,
        searchController: searchController, // Gán controller đã khởi tạo
        searchText: '',
        vegetableHomeModel: state.vegetableHomeModel?.copyWith(), // Cập nhật model nếu cần
      ));
      debugPrint('VegetableHomeBloc state emitted after successful initialization with all data.');

    } catch (e, stackTrace) {
      debugPrint('Error during VegetableHomeBloc initialization: $e');
      debugPrint('Stack trace: $stackTrace');
      // Xử lý lỗi: Cập nhật state với danh sách rỗng hoặc dữ liệu placeholder nếu muốn
      // Hoặc bạn có thể thêm một trường `errorMessage` vào state để hiển thị trên UI
      emit(state.copyWith(
        mealSuggestions: [], // Trả về rỗng nếu lỗi
        vegetableBasicInfoList: [], // Trả về rỗng nếu lỗi
        searchController: searchController,
        searchText: '',
      ));
    }
  }

  // Handler cho sự kiện khi text tìm kiếm thay đổi (SearchTextChangedEvent).
  _onSearchTextChanged(
      SearchTextChangedEvent event,
      Emitter<VegetableHomeState> emit,
      ) {
    debugPrint('SearchTextChangedEvent received: ${event.searchText}');
    emit(state.copyWith(searchText: event.searchText));
    debugPrint('VegetableHomeBloc state emitted after search text change');
    // Logic lọc sẽ được thực hiện trong BlocBuilder của VegetableHomeScreen
    // hoặc chuyển sang màn hình tìm kiếm riêng (VegetableSearchScreen)
  }

  // Handler cho sự kiện khi tab dưới cùng thay đổi (BottomTabChangedEvent).
  _onBottomTabChanged(
      BottomTabChangedEvent event,
      Emitter<VegetableHomeState> emit,
      ) {
    debugPrint('BottomTabChangedEvent received: index ${event.tabIndex}');

    // Chỉ cập nhật selectedTabIndex trong state.
    emit(state.copyWith(selectedTabIndex: event.tabIndex));
    debugPrint('VegetableHomeBloc state emitted after tab change');
  }

  // Handler mới cho sự kiện khi một loại rau củ được chọn
  _onVegetableSelected(
      VegetableSelectedEvent event,
      Emitter<VegetableHomeState> emit,
      ) async {
    debugPrint('VegetableSelectedEvent received for classIndex: ${event.classIndex}');
    try {
      // Gọi API để lấy thông tin chi tiết của rau củ dựa trên classIndex
      final VegetableDetails detailedInfo = await _apiService.fetchVegetableDetailedInfo(event.classIndex); // <-- Gọi API chi tiết

      debugPrint('Fetched detailed info for vegetable ID: ${detailedInfo.id}');

      // Điều hướng đến màn hình thông tin chi tiết rau củ
      NavigatorService.pushNamed(
        AppRoutes.vegetableInfoScreen,
        arguments: {
          'classIndex': detailedInfo.id, // Truyền ID của rau củ
          'tabIndex': state.selectedTabIndex, // Truyền index tab hiện tại
        },
      );
      debugPrint('Navigated to VegetableInfoScreen');

    } catch (e) {
      debugPrint('Error fetching vegetable details: $e');
      // TODO: Xử lý lỗi (ví dụ: hiển thị thông báo lỗi cho người dùng)
    }
  }

  // Handler cho sự kiện khi một món ăn được chọn (từ trang chủ hoặc món liên quan)
  _onMealSelected(
      MealSelectedEvent event,
      Emitter<VegetableHomeState> emit,
      ) async {
    debugPrint('MealSelectedEvent received for mealId: ${event.mealId}');
    try {
      NavigatorService.pushNamed(
        AppRoutes.mealInfoScreen,
        arguments: {
          'mealId': event.mealId, // Truyền ID món ăn
          'tabIndex': state.selectedTabIndex,
          'relatedMeals': state.mealSuggestions, // Truyền lại danh sách gợi ý hiện có
        },
      );
      debugPrint('Navigated to MealInfoScreen with mealId: ${event.mealId}');
    } catch (e) {
      debugPrint('Error navigating to meal details: $e');
      // TODO: Xử lý lỗi (ví dụ: hiển thị SnackBar)
    }
  }
}

