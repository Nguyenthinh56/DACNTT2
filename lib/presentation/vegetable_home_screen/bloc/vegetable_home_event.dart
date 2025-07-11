part of 'vegetable_home_bloc.dart';

abstract class VegetableHomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event khi màn hình VegetableHome được khởi tạo.
class VegetableHomeInitialEvent extends VegetableHomeEvent {}

/// Event that is dispatched when the search text changes.
class SearchTextChangedEvent extends VegetableHomeEvent {
  final String searchText;

  SearchTextChangedEvent(this.searchText);

  @override
  List<Object?> get props => [searchText];
}

/// Event khi tab dưới cùng được thay đổi.
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
