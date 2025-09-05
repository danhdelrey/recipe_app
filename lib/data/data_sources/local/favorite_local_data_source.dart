import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/data/models/hive/meal_hive_model.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';

abstract class FavoriteLocalDataSource {
  Future<void> saveMeal(MealEntity meal);
  Future<void> removeMeal(String mealId);
  Future<bool> isMealFavorite(String mealId);
  Future<List<MealEntity>> getSavedMeals();
}

@LazySingleton(as: FavoriteLocalDataSource)
class FavoriteLocalDataSourceImpl implements FavoriteLocalDataSource {
  static const String _boxName = 'favorite_meals';
  // Helper để lấy box, đảm bảo nó đã được mở
  Future<Box<MealHiveModel>> _getBox() async {
    return Hive.openBox<MealHiveModel>(_boxName);
  }

  @override
  Future<void> saveMeal(MealEntity meal) async {
    final box = await _getBox();
    final hiveModel = MealHiveModel.fromEntity(meal);
    // Sử dụng ID của món ăn làm key cho Hive
    await box.put(meal.id, hiveModel);
  }

  @override
  Future<void> removeMeal(String mealId) async {
    final box = await _getBox();
    await box.delete(mealId);
  }

  @override
  Future<bool> isMealFavorite(String mealId) async {
    final box = await _getBox();
    return box.containsKey(mealId);
  }

  @override
  Future<List<MealEntity>> getSavedMeals() async {
    final box = await _getBox();
    return box.values.map((hiveModel) => hiveModel.toEntity()).toList();
  }
}
