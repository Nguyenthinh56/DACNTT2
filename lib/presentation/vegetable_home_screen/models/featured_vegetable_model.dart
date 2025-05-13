import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// Model class for featured vegetables in the grid
class FeaturedVegetableModel extends Equatable {
  FeaturedVegetableModel({this.image, this.name});

  String? image;
  String? name;

  FeaturedVegetableModel copyWith({String? image, String? name}) {
    return FeaturedVegetableModel(
      image: image ?? this.image,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [image, name];
}
