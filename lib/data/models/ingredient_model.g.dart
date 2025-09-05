// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IngredientModel _$IngredientModelFromJson(Map<String, dynamic> json) =>
    _IngredientModel(
      id: json['idIngredient'] as String,
      name: json['strIngredient'] as String,
      description: json['strDescription'] as String?,
    );

Map<String, dynamic> _$IngredientModelToJson(_IngredientModel instance) =>
    <String, dynamic>{
      'idIngredient': instance.id,
      'strIngredient': instance.name,
      'strDescription': instance.description,
    };
