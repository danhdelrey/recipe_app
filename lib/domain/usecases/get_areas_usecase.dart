import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/area_entity.dart';
import 'package:recipe_app/domain/repositories/meal_repository.dart';

@injectable
class GetAreasUseCase {
  final MealRepository repository;

  GetAreasUseCase(this.repository);

  Future<Either<Failure, List<AreaEntity>>> call() {
    return repository.getAreas();
  }
}
