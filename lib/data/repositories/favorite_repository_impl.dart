import 'package:dartz/dartz.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/data/data_sources/local/favorite_local_data_source.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/repositories/favorite_repository.dart';

@LazySingleton(as: FavoriteRepository)
class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteLocalDataSource localDataSource;

  FavoriteRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, List<MealEntity>>> getFavoriteMeals() async {
    try {
      final meals = await localDataSource.getSavedMeals();
      return Right(meals);
    } on HiveError {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> isFavorite(String mealId) async {
    try {
      final isFav = await localDataSource.isMealFavorite(mealId);
      return Right(isFav);
    } on HiveError {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> removeFavoriteMeal(String mealId) async {
    try {
      await localDataSource.removeMeal(mealId);
      return const Right(null);
    } on HiveError {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveFavoriteMeal(MealEntity meal) async {
    try {
      await localDataSource.saveMeal(meal);
      return const Right(null);
    } on HiveError {
      return Left(CacheFailure());
    }
  }

   @override
  Future<Either<Failure, Stream<List<MealEntity>>>> watchFavoriteMeals() async {
    try {
      final stream = localDataSource.watchSavedMeals();
      return Right(stream);
    } on HiveError {
      return Left(CacheFailure());
    }
  }
}
