import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:recipe_app/domain/entities/ingredient_detail_entity.dart';

part 'ingredient_detail_hive_model.g.dart';

@HiveType(typeId: 1) 
class IngredientDetailHiveModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String measure;

  IngredientDetailHiveModel({required this.name, required this.measure});

  // Chuyển đổi từ Entity sang Hive Model
  factory IngredientDetailHiveModel.fromEntity(IngredientDetailEntity entity) {
    return IngredientDetailHiveModel(
      name: entity.name,
      measure: entity.measure,
    );
  }

  // Chuyển đổi từ Hive Model sang Entity
  IngredientDetailEntity toEntity() {
    return IngredientDetailEntity(name: name, measure: measure);
  }
}
