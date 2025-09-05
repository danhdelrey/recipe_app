import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/repositories/favorite_repository.dart';

@injectable
class GetFavoriteMealsUseCase {
  final FavoriteRepository repository;

  GetFavoriteMealsUseCase(this.repository);

  Future<Either<Failure, List<MealEntity>>> call() {
    return repository.getFavoriteMeals();
  }
}
