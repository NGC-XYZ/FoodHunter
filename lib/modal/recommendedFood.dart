import 'package:json_annotation/json_annotation.dart';

part 'recommendedFood.g.dart';

@JsonSerializable()

class RecommendedFood {
  RecommendedFood(this.name, this.location, this.type);

  String name;
  String location;
  String type;

  factory RecommendedFood.fromJson(Map<String, dynamic> json) => _$RecommendedFoodFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedFoodToJson(this);
}
