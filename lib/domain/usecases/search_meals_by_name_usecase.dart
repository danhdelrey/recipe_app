import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/repositories/meal_repository.dart';

@injectable
class SearchMealsByNameUseCase {
  final MealRepository repository;

  SearchMealsByNameUseCase(this.repository);

  Future<Either<Failure, List<MealEntity>>> call(String query) {
    if (query.trim().isEmpty) {
      return Future.value(const Right([]));
    }
    return repository.searchMealsByName(query);
  }
}
