import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_detail_entity.freezed.dart';

@freezed
abstract class IngredientDetailEntity with _$IngredientDetailEntity {
  const factory IngredientDetailEntity({
    required String name,
    required String measure,
  }) = _IngredientDetailEntity;
}
