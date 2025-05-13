import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// Model class for meal suggestion items in the horizontal scrollable list
class MealSuggestionModel extends Equatable {
  MealSuggestionModel({this.image, this.title});

  String? image;
  String? title;

  MealSuggestionModel copyWith({String? image, String? title}) {
    return MealSuggestionModel(
      image: image ?? this.image,
      title: title ?? this.title,
    );
  }

  @override
  List<Object?> get props => [image, title];
}
