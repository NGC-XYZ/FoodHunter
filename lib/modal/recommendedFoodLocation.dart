import 'package:json_annotation/json_annotation.dart';

part 'recommendedFoodLocation.g.dart';

@JsonSerializable()

class RecommendedFoodLocation {
  RecommendedFoodLocation(this.street, this.city);

  String street;
  String city;

  factory RecommendedFoodLocation.fromJson(Map<String, dynamic> json) =>
      _$RecommendedFoodLocationFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedFoodLocationToJson(this);
}
