import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/repositories/favorite_repository.dart';

@injectable
class SaveFavoriteMealUseCase {
  final FavoriteRepository repository;

  SaveFavoriteMealUseCase(this.repository);

  /// Gọi để lưu một [MealEntity] vào bộ nhớ local.
  Future<Either<Failure, void>> call(MealEntity meal) {
    return repository.saveFavoriteMeal(meal);
  }
}
