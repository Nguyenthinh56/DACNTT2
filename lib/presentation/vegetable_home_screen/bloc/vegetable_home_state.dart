part of 'vegetable_home_bloc.dart';

/// Represents the state of VegetableHome in the application.
class VegetableHomeState extends Equatable {
  final VegetableHomeModel? vegetableHomeModel;
  final List<MealSuggestionModel>? mealSuggestions;
  final List<FeaturedVegetableModel>? featuredVegetables;
  final TextEditingController? searchController;
  final String? searchText;
  final int selectedTabIndex;

  const VegetableHomeState({
    this.vegetableHomeModel,
    this.mealSuggestions,
    this.featuredVegetables,
    this.searchController,
    this.searchText,
    this.selectedTabIndex = 0,
  });

  @override
  List<Object?> get props => [
    vegetableHomeModel,
    mealSuggestions,
    featuredVegetables,
    searchController,
    searchText,
    selectedTabIndex,
  ];

  VegetableHomeState copyWith({
    VegetableHomeModel? vegetableHomeModel,
    List<MealSuggestionModel>? mealSuggestions,
    List<FeaturedVegetableModel>? featuredVegetables,
    TextEditingController? searchController,
    String? searchText,
    int? selectedTabIndex,
  }) {
    return VegetableHomeState(
      vegetableHomeModel: vegetableHomeModel ?? this.vegetableHomeModel,
      mealSuggestions: mealSuggestions ?? this.mealSuggestions,
      featuredVegetables: featuredVegetables ?? this.featuredVegetables,
      searchController: searchController ?? this.searchController,
      searchText: searchText ?? this.searchText,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }
}
