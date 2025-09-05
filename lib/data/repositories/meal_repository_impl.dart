import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/exceptions.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/data/data_sources/remote/meal_remote_data_source.dart';
import 'package:recipe_app/domain/entities/area_entity.dart';
import 'package:recipe_app/domain/entities/category_entity.dart';
import 'package:recipe_app/domain/entities/ingredient_entity.dart';
import 'package:recipe_app/domain/repositories/meal_repository.dart';

@LazySingleton(as: MealRepository)
class MealRepositoryImpl implements MealRepository {
  final MealRemoteDataSource remoteDataSource;

  MealRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<CategoryEntity>>> getCategories() async {
    try {
      final models = await remoteDataSource.getCategories();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<AreaEntity>>> getAreas() async {
    try {
      final models = await remoteDataSource.getAreas();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<IngredientEntity>>> getIngredients() async {
    try {
      final models = await remoteDataSource.getIngredients();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
