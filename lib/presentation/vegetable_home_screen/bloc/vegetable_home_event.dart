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
