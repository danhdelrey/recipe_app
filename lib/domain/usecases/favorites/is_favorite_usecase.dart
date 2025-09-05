import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/repositories/favorite_repository.dart';

@injectable
class IsFavoriteUseCase {
  final FavoriteRepository repository;

  IsFavoriteUseCase(this.repository);

  Future<Either<Failure, bool>> call(String mealId) {
    return repository.isFavorite(mealId);
  }
}
