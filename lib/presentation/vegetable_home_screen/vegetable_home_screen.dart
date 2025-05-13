import 'package:flutter/material.dart';
import './widgets/bottom_navigation_bar_widget.dart';
import 'bloc/vegetable_home_bloc.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './widgets/featured_vegetable_item_widget.dart';
import './widgets/meal_suggestion_card_widget.dart'; // Import widget card gợi ý món ăn
import './models/meal_details_model.dart';
import './models/vegetable_details_model.dart';
import './models/meal_suggestion_model.dart';
import './models/featured_vegetable_model.dart';

class VegetableHomeScreen extends StatelessWidget {
  VegetableHomeScreen({Key? key}) : super(key: key);

  // Phương thức builder này chỉ trả về VegetableHomeScreen
  // Giả định rằng BlocProvider sẽ được tạo ở cấp cao hơn và bao bọc VegetableHomeScreen
  static Widget builder(BuildContext context) {
    debugPrint('VegetableHomeScreen.builder called'); // Debug print
    return VegetableHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('VegetableHomeScreen build method called'); // Debug print
    // BlocBuilder giờ đây sẽ tìm thấy BlocProvider từ một widget tổ tiên
    return BlocBuilder<VegetableHomeBloc, VegetableHomeState>(
      builder: (context, state) {
        debugPrint('VegetableHomeBloc state updated in builder'); // Debug print
        // Đảm bảo state.selectedTabIndex có giá trị mặc định nếu null
        // Màn hình Trang chủ tương ứng với index 0
        final int currentIndex = state.selectedTabIndex ?? 0;

        // Lọc danh sách gợi ý món ăn và rau củ nổi bật dựa trên searchText
        final String searchText = state.searchText?.toLowerCase() ?? '';

        final List<MealSuggestionModel> filteredMealSuggestions =
        (state.mealSuggestions ?? [])
            .where((meal) =>
        meal.title?.toLowerCase().contains(searchText) ?? false)
            .toList();

        final List<FeaturedVegetableModel> filteredFeaturedVegetables =
        (state.featuredVegetables ?? [])
            .where((vegetable) =>
        vegetable.name?.toLowerCase().contains(searchText) ?? false)
            .toList();


        return Scaffold( // <-- Giữ nguyên Scaffold
          backgroundColor: Colors.white, // <-- Đảm bảo Scaffold có màu nền trắng
          extendBodyBehindAppBar: false, // <-- Giữ về false
          extendBody: false, // <-- Giữ về false
          body: SafeArea( // <-- Giữ SafeArea bao bọc phần body
            child: MediaQuery.removePadding( // <-- Thêm MediaQuery.removePadding
              context: context,
              removeTop: true, // <-- Loại bỏ padding top mặc định
              child: _buildBody(context, state, filteredMealSuggestions, filteredFeaturedVegetables), // Truyền danh sách đã lọc
            ),
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: currentIndex, // Truyền index hiện tại (0 cho Trang chủ)
            //logic điều hướng nằm trong widget BottomNavigationBarWidget
          ),
        );
      },
    );
  }

  // Cập nhật _buildBody để nhận danh sách đã lọc
  Widget _buildBody(BuildContext context, VegetableHomeState state,
      List<MealSuggestionModel> filteredMealSuggestions,
      List<FeaturedVegetableModel> filteredFeaturedVegetables) {
    debugPrint('VegetableHomeScreen _buildBody called'); // Debug print
    debugPrint('Current state data: vegetableHomeModel=${state.vegetableHomeModel != null}, mealSuggestions=${state.mealSuggestions?.length}, featuredVegetables=${state.featuredVegetables?.length}'); // Debug print state data

    // Trả về SingleChildScrollView trực tiếp
    return SingleChildScrollView(
      // Đã xóa Padding tường minh ở đây
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBanner(context, state),
          _buildSearchHeading(context, state),
          _buildSearchInput(context, state),
          _buildDailyMealSuggestions(context, state, filteredMealSuggestions), // Truyền danh sách gợi ý đã lọc
          _buildFeaturedVegetables(context, state, filteredFeaturedVegetables), // Truyền danh sách rau củ đã lọc
          // Không còn Spacer() ở đây nữa
          SizedBox(height: 100.h), // <-- Giữ lại SizedBox cuối cùng để có khoảng trống dưới cùng
        ],
      ),
    );
  }

  Widget _buildSearchBanner(BuildContext context, VegetableHomeState state) {
    // debugPrint('VegetableHomeScreen _buildSearchBanner called'); // Debug print (có thể quá nhiều)
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      height: 148.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF4CF2, // Sử dụng màu từ appTheme
        borderRadius: BorderRadius.circular(18.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3, // Sử dụng hằng số hình ảnh
            height: 148.h,
            width: MediaQuery.of(context).size.width - 32.h,
            radius: BorderRadius.circular(18.h),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 215.h,
                  child: Text(
                    state.vegetableHomeModel?.searchBannerTitle ?? '',
                    style: TextStyleHelper.instance.headline29Medium.copyWith(height: 1.03), // Sử dụng TextStyleHelper
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  state.vegetableHomeModel?.searchBannerSubtitle ?? '',
                  style: TextStyleHelper.instance.body15Medium, // Sử dụng TextStyleHelper
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchHeading(BuildContext context, VegetableHomeState state) {
    // debugPrint('VegetableHomeScreen _buildSearchHeading called'); // Debug print (có thể quá nhiều)
    return Padding(
      padding: EdgeInsets.only(left: 16.h, top: 24.h),
      child: Text(
        state.vegetableHomeModel?.searchHeading ?? '',
        style: TextStyleHelper.instance.title20Medium, // Sử dụng TextStyleHelper
      ),
    );
  }

  Widget _buildSearchInput(BuildContext context, VegetableHomeState state) {
    // debugPrint('VegetableHomeScreen _buildSearchInput called'); // Debug print (có thể quá nhiều)
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
      height: 74.h,
      decoration: BoxDecoration(
        color: appTheme.colorFFF3F4, // Sử dụng màu từ appTheme
        borderRadius: BorderRadius.circular(16.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBisearch, // Sử dụng hằng số hình ảnh
            height: 20.h,
            width: 23.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: TextField(
              controller: state.searchController,
              decoration: InputDecoration(
                hintText: state.vegetableHomeModel?.searchPlaceholder,
                hintStyle: TextStyleHelper.instance.body14, // Sử dụng TextStyleHelper
                border: InputBorder.none,
              ),
              style: TextStyleHelper.instance.body14, // Sử dụng TextStyleHelper
              onChanged: (value) {
                // Gửi sự kiện khi văn bản tìm kiếm thay đổi
                context.read<VegetableHomeBloc>().add(SearchTextChangedEvent(value));
              },
            ),
          ),
        ],
      ),
    );
  }

  // Cập nhật _buildDailyMealSuggestions để nhận danh sách đã lọc
  Widget _buildDailyMealSuggestions(BuildContext context, VegetableHomeState state, List<MealSuggestionModel> filteredMealSuggestions) {
    // debugPrint('VegetableHomeScreen _buildDailyMealSuggestions called'); // Debug print (có thể quá nhiều)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h, top: 24.h),
          child: Text(
            state.vegetableHomeModel?.dailyMealSuggestionTitle ?? '',
            style: TextStyleHelper.instance.title20Medium, // Sử dụng TextStyleHelper
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          height: 148.h,
          margin: EdgeInsets.only(left: 16.h),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            // Sử dụng danh sách đã lọc
            itemCount: filteredMealSuggestions.length,
            separatorBuilder: (context, index) => SizedBox(width: 16.h),
            itemBuilder: (context, index) {
              final mealSuggestion = filteredMealSuggestions[index];
              // Bọc MealSuggestionCardWidget bằng InkWell để có thể nhấn vào
              return InkWell(
                onTap: () {
                  // Tạo dữ liệu chi tiết món ăn giả lập từ gợi ý
                  final mealDetails = MealDetails.placeholder(
                    mealSuggestion.title ?? 'Món ăn', // Tên món ăn
                    // Sử dụng tên hằng số placeholder từ ImageConstant của bạn
                    mealSuggestion.image ?? ImageConstant.imgImageNotFound, // <-- Đã sửa tên hằng số placeholder
                  );
                  // Điều hướng đến màn hình thông tin món ăn
                  Navigator.pushNamed(
                    context,
                    AppRoutes.mealInfoScreen,
                    // Truyền dữ liệu chi tiết món ăn VÀ index hiện tại (0)
                    arguments: {
                      'details': mealDetails,
                      'tabIndex': 0, // <-- Truyền index 0 (Trang chủ)
                      // Truyền danh sách gợi ý đầy đủ ban đầu (chưa lọc)
                      'relatedMeals': state.mealSuggestions, // <-- Truyền danh sách gốc
                    },
                  );
                },
                child: MealSuggestionCardWidget(
                  mealSuggestion: mealSuggestion,
                  // onTap đã được xử lý bởi InkWell bên ngoài
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Cập nhật _buildFeaturedVegetables để nhận danh sách đã lọc
  Widget _buildFeaturedVegetables(BuildContext context, VegetableHomeState state, List<FeaturedVegetableModel> filteredFeaturedVegetables) {
    // debugPrint('VegetableHomeScreen _buildFeaturedVegetables called'); // Debug print (có thể quá nhiều)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h, top: 24.h),
          child: Text(
            state.vegetableHomeModel?.featuredVegetablesTitle ?? '',
            style: TextStyleHelper.instance.title20Medium, // Sử dụng TextStyleHelper
          ),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Sử dụng danh sách đã lọc
            children: List.generate(
              filteredFeaturedVegetables.length,
                  (i) {
                final featuredVegetable = filteredFeaturedVegetables[i];
                // Bọc FeaturedVegetableItemWidget bằng InkWell để có thể nhấn vào
                return InkWell(
                  onTap: () {
                    // Tạo dữ liệu chi tiết rau củ giả lập từ FeaturedVegetableModel
                    final vegetableDetails = VegetableDetails.placeholder(
                      featuredVegetable.name ?? 'Rau củ', // Tên rau củ
                    );
                    // Điều hướng đến màn hình thông tin rau củ
                    Navigator.pushNamed(
                      context,
                      AppRoutes.vegetableInfoScreen,
                      // Truyền dữ liệu chi tiết rau củ VÀ đường dẫn ảnh VÀ index hiện tại (0)
                      arguments: {
                        'details': vegetableDetails,
                        'imagePath': featuredVegetable.image, // <-- Truyền đường dẫn ảnh
                        'tabIndex': 0, // <-- Truyền index 0 (Trang chủ)
                        // Không truyền relatedMeals ở đây vì đây là rau củ, không phải món ăn gợi ý
                      },
                    );
                  },
                  child: FeaturedVegetableItemWidget(
                      vegetable: featuredVegetable
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}