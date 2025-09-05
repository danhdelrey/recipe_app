import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/repositories/favorite_repository.dart';

@injectable
class RemoveFavoriteMealUseCase {
  final FavoriteRepository repository;
  RemoveFavoriteMealUseCase(this.repository);

  Future<Either<Failure, void>> call(String mealId) {
    return repository.removeFavoriteMeal(mealId);
  }
}
