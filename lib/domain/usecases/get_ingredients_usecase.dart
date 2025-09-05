import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/ingredient_entity.dart';
import 'package:recipe_app/domain/repositories/meal_repository.dart';

@injectable
class GetIngredientsUseCase {
  final MealRepository repository;

  GetIngredientsUseCase(this.repository);

  Future<Either<Failure, List<IngredientEntity>>> call() {
    return repository.getIngredients();
  }
}
