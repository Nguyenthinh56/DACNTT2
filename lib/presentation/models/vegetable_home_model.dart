import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

class VegetableHomeModel extends Equatable {
  VegetableHomeModel({
    this.searchBannerTitle,
    this.searchBannerSubtitle,
    this.searchHeading,
    this.searchPlaceholder,
    this.dailyMealSuggestionTitle,
    this.featuredVegetablesTitle,
  }) {
    searchBannerTitle = searchBannerTitle ?? "Tìm kiếm thông tin rau củ";
    searchBannerSubtitle = searchBannerSubtitle ?? "Mọi lúc, mọi nơi...";
    searchHeading = searchHeading ?? "Bạn muốn tìm gì cho hôm nay ?";
    searchPlaceholder = searchPlaceholder ?? "Tìm kiếm rau củ...";
    dailyMealSuggestionTitle = "Món ngon mỗi ngày";
    featuredVegetablesTitle = featuredVegetablesTitle ?? "Khám phá ngay";
  }

  String? searchBannerTitle;
  String? searchBannerSubtitle;
  String? searchHeading;
  String? searchPlaceholder;
  String? dailyMealSuggestionTitle;
  String? featuredVegetablesTitle;

  VegetableHomeModel copyWith({
    String? searchBannerTitle,
    String? searchBannerSubtitle,
    String? searchHeading,
    String? searchPlaceholder,
    String? dailyMealSuggestionTitle,
    String? featuredVegetablesTitle,
  }) {
    return VegetableHomeModel(
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
    searchBannerTitle,
    searchBannerSubtitle,
    searchHeading,
    searchPlaceholder,
    dailyMealSuggestionTitle,
    featuredVegetablesTitle,
  ];
}
