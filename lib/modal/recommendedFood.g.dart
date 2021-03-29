// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendedFood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendedFood _$RecommendedFoodFromJson(Map<String, dynamic> json) {
  return RecommendedFood(
    json['name'] as String,
    RecommendedFoodLocation.fromJson(json['location'] as Map<String, dynamic>),
    json['type'] as String,
    RecommendedFood._dateTimeFromEpochUs(json['openDate'] as int),
  );
}

Map<String, dynamic> _$RecommendedFoodToJson(RecommendedFood instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'location': instance.location.toJson(),
      'openDate': RecommendedFood._dateTimeToEpochUs(instance.openDate),
    };
