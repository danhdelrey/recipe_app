import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/area_entity.dart';
import 'package:recipe_app/domain/entities/category_entity.dart';
import 'package:recipe_app/domain/entities/ingredient_entity.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';

abstract class MealRepository {
  Future<Either<Failure, List<CategoryEntity>>> getCategories();
  Future<Either<Failure, List<AreaEntity>>> getAreas();
  Future<Either<Failure, List<IngredientEntity>>> getIngredients();
  Future<Either<Failure, List<MealEntity>>> searchMealsByName(String query);
}
