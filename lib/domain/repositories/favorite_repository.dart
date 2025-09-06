import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';

abstract class FavoriteRepository {
  /// Lưu một món ăn vào danh sách yêu thích
  Future<Either<Failure, void>> saveFavoriteMeal(MealEntity meal);

  /// Xóa một món ăn khỏi danh sách yêu thích bằng ID
  Future<Either<Failure, void>> removeFavoriteMeal(String mealId);

  /// Kiểm tra xem một món ăn đã được yêu thích chưa
  Future<Either<Failure, bool>> isFavorite(String mealId);

  /// Lấy tất cả các món ăn đã yêu thích
  Future<Either<Failure, List<MealEntity>>> getFavoriteMeals();

  Future<Either<Failure, Stream<List<MealEntity>>>> watchFavoriteMeals();
}
