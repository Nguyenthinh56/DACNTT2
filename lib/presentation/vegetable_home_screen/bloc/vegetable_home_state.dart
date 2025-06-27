part of 'vegetable_home_bloc.dart';

/// Represents the state of VegetableHome in the application.
class VegetableHomeState extends Equatable {
  final VegetableHomeModel? vegetableHomeModel;
  final List<MealSuggestionModel>? mealSuggestions;
  final List<VegetableBasicInfo>? vegetableBasicInfoList;
  final TextEditingController? searchController;
  final String? searchText;
  final int selectedTabIndex;

  const VegetableHomeState({
    this.vegetableHomeModel,
    this.mealSuggestions,
    this.vegetableBasicInfoList,
    this.searchController,
    this.searchText,
    this.selectedTabIndex = 0,
  });

  @override
  List<Object?> get props => [
    vegetableHomeModel,
    mealSuggestions,
    vegetableBasicInfoList,
    searchController,
    searchText,
    selectedTabIndex,
  ];

  VegetableHomeState copyWith({
    VegetableHomeModel? vegetableHomeModel,
    List<MealSuggestionModel>? mealSuggestions,
    List<VegetableBasicInfo>? vegetableBasicInfoList,
    TextEditingController? searchController,
    String? searchText,
    int? selectedTabIndex,
  }) {
    return VegetableHomeState(
      vegetableHomeModel: vegetableHomeModel ?? this.vegetableHomeModel,
      mealSuggestions: mealSuggestions ?? this.mealSuggestions,
      vegetableBasicInfoList: vegetableBasicInfoList ?? this.vegetableBasicInfoList,
      searchController: searchController ?? this.searchController,
      searchText: searchText ?? this.searchText,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }
}