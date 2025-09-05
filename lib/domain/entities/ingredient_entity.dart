import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_entity.freezed.dart';

@freezed
abstract class IngredientEntity with _$IngredientEntity {
  const factory IngredientEntity({
    required String id,
    required String name,
    required String? description,
  }) = _IngredientEntity;
}
