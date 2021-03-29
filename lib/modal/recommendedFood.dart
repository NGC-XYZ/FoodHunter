import 'package:food_hunter/modal/recommendedFoodLocation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommendedFood.g.dart';

@JsonSerializable(explicitToJson: true)

class RecommendedFood {
  RecommendedFood(this.name, this.location, this.type);

  String name;
  String type;
  RecommendedFoodLocation location;

  factory RecommendedFood.fromJson(Map<String, dynamic> json) => _$RecommendedFoodFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedFoodToJson(this);
}
