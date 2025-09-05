import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/category_entity.dart';
import 'package:recipe_app/domain/repositories/meal_repository.dart';

@injectable
class GetCategoriesUseCase {
  final MealRepository repository;

  GetCategoriesUseCase(this.repository);

  Future<Either<Failure, List<CategoryEntity>>> call() {
    return repository.getCategories();
  }
}
