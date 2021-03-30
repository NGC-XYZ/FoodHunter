import 'package:food_hunter/modal/recommendedFoodLocation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommendedFood.g.dart';

@JsonSerializable(explicitToJson: true)
class RecommendedFood {
  RecommendedFood(this.name, this.location, this.type, this.openDate);

  String name;
  String type;
  RecommendedFoodLocation location;
  @JsonKey(fromJson: _dateTimeFromEpochUs, toJson: _dateTimeToEpochUs)
  final DateTime openDate;

  factory RecommendedFood.fromJson(Map<String, dynamic> json) =>
      _$RecommendedFoodFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedFoodToJson(this);

  static DateTime _dateTimeFromEpochUs(int us) =>
      DateTime.fromMicrosecondsSinceEpoch(us);

  static int? _dateTimeToEpochUs(DateTime? dateTime) =>
      dateTime?.microsecondsSinceEpoch;
}
