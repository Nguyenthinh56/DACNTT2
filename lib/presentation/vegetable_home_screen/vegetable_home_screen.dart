import 'package:fe/presentation/widgets/featured_vegetable_item_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import 'bloc/vegetable_home_bloc.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import '../widgets/meal_suggestion_card_widget.dart';
import '../models/meal_suggestion_model.dart';
import '../models/vegetable_db_model.dart';

class VegetableHomeScreen extends StatelessWidget {
  VegetableHomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    debugPrint('VegetableHomeScreen.builder called');
    return VegetableHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('VegetableHomeScreen build method called');
    return BlocBuilder<VegetableHomeBloc, VegetableHomeState>(
      builder: (context, state) {
        debugPrint('VegetableHomeBloc state updated in builder');
        final int currentIndex = state.selectedTabIndex;

        final String searchText = state.searchText?.toLowerCase() ?? '';

        final List<MealSuggestionModel> filteredMealSuggestions =
        (state.mealSuggestions ?? [])
            .where((meal) =>
        meal.title?.toLowerCase().contains(searchText) ?? false)
            .toList();

        final List<VegetableBasicInfo> filteredVegetableBasicInfo =
        (state.vegetableBasicInfoList ?? [])
            .where((vegetable) => vegetable.vietnameseName.contains(searchText))
            .toList();

        return Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: false,
          extendBody: false,
          appBar: AppBar(
            title: const Text('Trang Chủ'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Stack( // Bọc nội dung body trong Stack
            children: [
              // Lớp hình nền
              Positioned.fill(
                child: Image.asset(
                  'assets/images/background.png', // Đường dẫn tới ảnh nền
                  fit: BoxFit.cover, // Đảm bảo ảnh phủ kín toàn bộ không gian
                ),
              ),
              // Lớp nội dung chính của màn hình
              SafeArea(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: _buildBody(context, state, filteredMealSuggestions, filteredVegetableBasicInfo),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: currentIndex,
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, VegetableHomeState state,
      List<MealSuggestionModel> filteredMealSuggestions,
      List<VegetableBasicInfo> filteredVegetableBasicInfo) {
    debugPrint('VegetableHomeScreen _buildBody called');
    debugPrint('Current state data: vegetableHomeModel=${state.vegetableHomeModel != null}, mealSuggestions=${state.mealSuggestions?.length}, vegetableBasicInfoList=${state.vegetableBasicInfoList?.length}');

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBanner(context, state),
          _buildSearchHeading(context, state),
          _buildSearchInput(context, state, state.vegetableBasicInfoList ?? []),
          _buildFeaturedVegetables(context, state, filteredVegetableBasicInfo),
          _buildDailyMealSuggestions(context, state, filteredMealSuggestions),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildSearchBanner(BuildContext context, VegetableHomeState state) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      height: 148.h,
      decoration: BoxDecoration(
        color: appTheme.color14D9A3FF,
        borderRadius: BorderRadius.circular(18.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
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
                    style: TextStyleHelper.instance.headline29Medium.copyWith(height: 1.03),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  state.vegetableHomeModel?.searchBannerSubtitle ?? '',
                  style: TextStyleHelper.instance.body15Medium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchHeading(BuildContext context, VegetableHomeState state) {
    debugPrint('VegetableHomeScreen _buildSearchHeading called');
    return Padding(
      padding: EdgeInsets.only(left: 16.h, top: 24.h),
      child: Text(
        state.vegetableHomeModel?.searchHeading ?? '',
        style: TextStyleHelper.instance.title20Medium.copyWith(color: Colors.black), // Điều chỉnh màu chữ
      ),
    );
  }

  // _buildSearchInput
  Widget _buildSearchInput(BuildContext context, VegetableHomeState state, List<VegetableBasicInfo> vegetableBasicInfoList) {
    debugPrint('VegetableHomeScreen _buildSearchInput called');
    return InkWell(
      onTap: () {
        NavigatorService.pushNamed(
          AppRoutes.vegetableSearchScreen,
          arguments: vegetableBasicInfoList,
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
        height: 74.h,
        decoration: BoxDecoration(
          color: appTheme.colorFFF3F4,
          borderRadius: BorderRadius.circular(16.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBisearch,
              height: 20.h,
              width: 23.h,
              color: Colors.green[800],
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: IgnorePointer(
                child: TextField(
                  controller: state.searchController,
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: state.vegetableHomeModel?.searchPlaceholder,
                    hintStyle: TextStyleHelper.instance.body14Medium.copyWith(color: Colors.green[800]),
                    border: InputBorder.none,
                  ),
                  style: TextStyleHelper.instance.body14Medium,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.camera_alt),
              color: Colors.green[800],
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {
                NavigatorService.pushNamed(AppRoutes.cameraCaptureScreen);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDailyMealSuggestions(BuildContext context, VegetableHomeState state, List<MealSuggestionModel> filteredMealSuggestions) {
    debugPrint('VegetableHomeScreen _buildDailyMealSuggestions called');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h, top: 24.h),
          child: Text(
            state.vegetableHomeModel?.dailyMealSuggestionTitle ?? '',
            style: TextStyleHelper.instance.title20Medium.copyWith(color: Colors.black),
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox( // Thay đổi Container thành SizedBox và điều chỉnh chiều cao
          height: 180.h, // <--- Đặt chiều cao này lớn hơn chiều cao của MealSuggestionCardWidget (165.h)
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            // Thêm padding cho ListView.separated để các item không dính vào mép màn hình
            // và đồng bộ với cách _buildFeaturedVegetables hoạt động.
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            itemCount: filteredMealSuggestions.length,
            // Đặt separatorBuilder thành SizedBox(width: 0.h) vì padding giữa các item
            // đã được xử lý trong MealSuggestionCardWidget (Padding(horizontal: 12.h))
            separatorBuilder: (context, index) => SizedBox(width: 0.h),
            itemBuilder: (context, index) {
              final mealSuggestion = filteredMealSuggestions[index];
              return InkWell(
                onTap: () {
                  if (mealSuggestion.id != null) {
                    context.read<VegetableHomeBloc>().add(MealSelectedEvent(mealSuggestion.id!));
                  } else {
                    debugPrint('Error: Meal ID is null for ${mealSuggestion.title}');
                    NavigatorService.pushNamed(
                      AppRoutes.mealInfoScreen,
                      arguments: {
                        'id': mealSuggestion.id,
                        'tabIndex': 0,
                      },
                    );
                  }
                },
                child: MealSuggestionCardWidget(
                  mealSuggestion: mealSuggestion,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedVegetables(
      BuildContext context,
      VegetableHomeState state,
      List<VegetableBasicInfo> filteredVegetableBasicInfo,
      ) {
    debugPrint('VegetableHomeScreen _buildFeaturedVegetables called');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h, top: 24.h),
          child: Text(
            state.vegetableHomeModel?.featuredVegetablesTitle ?? '',
            style: TextStyleHelper.instance.title20Medium.copyWith(color: Colors.black), // Điều chỉnh màu chữ
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            itemCount: filteredVegetableBasicInfo.length,
            separatorBuilder: (context, index) => SizedBox(width: 16.h),
            itemBuilder: (context, index) {
              final vegetableBasicInfo = filteredVegetableBasicInfo[index];
              return FeaturedVegetableItemWidget(
                vegetable: vegetableBasicInfo,
                onTap: () {
                  NavigatorService.pushNamed(
                    AppRoutes.vegetableInfoScreen,
                    arguments: {
                      'classIndex': vegetableBasicInfo.id,
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}