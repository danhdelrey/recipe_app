// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealApiResponse<T> _$MealApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => MealApiResponse<T>(
  meals: (json['meals'] as List<dynamic>).map(fromJsonT).toList(),
);

Map<String, dynamic> _$MealApiResponseToJson<T>(
  MealApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'meals': instance.meals.map(toJsonT).toList()};
