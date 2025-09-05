import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_api_response.g.dart';

// Generic class để parse response chung của TheMealDB
@JsonSerializable(genericArgumentFactories: true)
class MealApiResponse<T> {
  final List<T> meals;

  MealApiResponse({required this.meals});

  factory MealApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$MealApiResponseFromJson(json, fromJsonT);
}
