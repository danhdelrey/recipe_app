import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'ingredient_detail_hive_model.dart';

part 'meal_hive_model.g.dart';

@HiveType(typeId: 0)
class MealHiveModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String category;
  @HiveField(3)
  final String area;
  @HiveField(4)
  final String instructions;
  @HiveField(5)
  final String thumbnail;
  @HiveField(6)
  final String? tags;
  @HiveField(7)
  final String? youtubeUrl;
  @HiveField(8)
  final List<IngredientDetailHiveModel> ingredients;

  MealHiveModel({
    required this.id,
    required this.name,
    required this.category,
    required this.area,
    required this.instructions,
    required this.thumbnail,
    this.tags,
    this.youtubeUrl,
    required this.ingredients,
  });

  factory MealHiveModel.fromEntity(MealEntity entity) {
    return MealHiveModel(
      id: entity.id,
      name: entity.name,
      category: entity.category,
      area: entity.area,
      instructions: entity.instructions,
      thumbnail: entity.thumbnail,
      tags: entity.tags,
      youtubeUrl: entity.youtubeUrl,
      ingredients: entity.ingredients
          .map((e) => IngredientDetailHiveModel.fromEntity(e))
          .toList(),
    );
  }

  MealEntity toEntity() {
    return MealEntity(
      id: id,
      name: name,
      category: category,
      area: area,
      instructions: instructions,
      thumbnail: thumbnail,
      tags: tags,
      youtubeUrl: youtubeUrl,
      ingredients: ingredients.map((e) => e.toEntity()).toList(),
    );
  }
}
