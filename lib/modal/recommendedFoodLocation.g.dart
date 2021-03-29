// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendedFoodLocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendedFoodLocation _$RecommendedFoodLocationFromJson(
    Map<String, dynamic> json) {
  return RecommendedFoodLocation(
    json['street'] as String,
    json['city'] as String,
  );
}

Map<String, dynamic> _$RecommendedFoodLocationToJson(
        RecommendedFoodLocation instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
    };
