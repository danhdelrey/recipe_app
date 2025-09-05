import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/ingredient_detail_entity.dart';

part 'meal_entity.freezed.dart';

@freezed
abstract class MealEntity with _$MealEntity {
  const factory MealEntity({
    required String id,
    required String name,
    required String category,
    required String area,
    required String instructions,
    required String thumbnail,
    String? tags,
    String? youtubeUrl,
    required List<IngredientDetailEntity> ingredients,
  }) = _MealEntity;
}
