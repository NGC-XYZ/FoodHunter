// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendedFood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendedFood _$RecommendedFoodFromJson(Map<String, dynamic> json) {
  return RecommendedFood(
    json['name'] as String,
    json['location'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$RecommendedFoodToJson(RecommendedFood instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'type': instance.type,
    };
