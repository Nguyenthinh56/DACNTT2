part of 'vegetable_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// VegetableHome UI.
abstract class VegetableHomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VegetableHome screen is initialized.
class VegetableHomeInitialEvent extends VegetableHomeEvent {}

/// Event that is dispatched when the search text changes.
class SearchTextChangedEvent extends VegetableHomeEvent {
  final String searchText;

  SearchTextChangedEvent(this.searchText);

  @override
  List<Object?> get props => [searchText];
}

/// Event that is dispatched when the bottom tab is changed.
class BottomTabChangedEvent extends VegetableHomeEvent {
  final int tabIndex;

  BottomTabChangedEvent(this.tabIndex);

  @override
  List<Object?> get props => [tabIndex];
}

// Event mới khi một loại rau củ được chọn
class VegetableSelectedEvent extends VegetableHomeEvent {
  final int classIndex; // Sử dụng classIndex để xác định rau củ

  VegetableSelectedEvent(this.classIndex);

  @override
  List<Object?> get props => [classIndex];
}

// Event mới khi một món ăn được chọn
class MealSelectedEvent extends VegetableHomeEvent {
  final int mealId; // Sử dụng mealId để xác định món ăn được chọn

  MealSelectedEvent(this.mealId);

  @override
  List<Object?> get props => [mealId];
}