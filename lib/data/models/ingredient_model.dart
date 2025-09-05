import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/ingredient_entity.dart';

part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
abstract class IngredientModel with _$IngredientModel {
  const IngredientModel._();

  const factory IngredientModel({
    @JsonKey(name: 'idIngredient') required String id,
    @JsonKey(name: 'strIngredient') required String name,
    @JsonKey(name: 'strDescription') required String? description,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientModelFromJson(json);

  IngredientEntity toEntity() =>
      IngredientEntity(id: id, name: name, description: description);
}
