import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

/// This class defines the variables used in the [vegetable_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VegetableHomeModel extends Equatable {
  VegetableHomeModel({
    this.currentTime,
    this.searchBannerTitle,
    this.searchBannerSubtitle,
    this.searchHeading,
    this.searchPlaceholder,
    this.dailyMealSuggestionTitle,
    this.featuredVegetablesTitle,
  }) {
    currentTime = currentTime ?? "12:30";
    searchBannerTitle = searchBannerTitle ?? "Tìm kiếm thông tin rau củ";
    searchBannerSubtitle = searchBannerSubtitle ?? "Mọi lúc, mọi nơi...";
    searchHeading = searchHeading ?? "Bạn muốn tìm gì cho hôm nay ?";
    searchPlaceholder = searchPlaceholder ?? "Tìm kiếm bất cứ rau củ nào bạn muốn...";
    dailyMealSuggestionTitle =
        dailyMealSuggestionTitle ?? "Gợi ý món ăn mỗi ngày";
    featuredVegetablesTitle = featuredVegetablesTitle ?? "Rau củ nổi bật";
  }

  String? currentTime;
  String? searchBannerTitle;
  String? searchBannerSubtitle;
  String? searchHeading;
  String? searchPlaceholder;
  String? dailyMealSuggestionTitle;
  String? featuredVegetablesTitle;

  VegetableHomeModel copyWith({
    String? currentTime,
    String? searchBannerTitle,
    String? searchBannerSubtitle,
    String? searchHeading,
    String? searchPlaceholder,
    String? dailyMealSuggestionTitle,
    String? featuredVegetablesTitle,
  }) {
    return VegetableHomeModel(
      currentTime: currentTime ?? this.currentTime,
      searchBannerTitle: searchBannerTitle ?? this.searchBannerTitle,
      searchBannerSubtitle: searchBannerSubtitle ?? this.searchBannerSubtitle,
      searchHeading: searchHeading ?? this.searchHeading,
      searchPlaceholder: searchPlaceholder ?? this.searchPlaceholder,
      dailyMealSuggestionTitle:
          dailyMealSuggestionTitle ?? this.dailyMealSuggestionTitle,
      featuredVegetablesTitle:
          featuredVegetablesTitle ?? this.featuredVegetablesTitle,
    );
  }

  @override
  List<Object?> get props => [
    currentTime,
    searchBannerTitle,
    searchBannerSubtitle,
    searchHeading,
    searchPlaceholder,
    dailyMealSuggestionTitle,
    featuredVegetablesTitle,
  ];
}
