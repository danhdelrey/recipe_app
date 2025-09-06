// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/data_sources/local/favorite_local_data_source.dart' as _i978;
import '../data/data_sources/remote/meal_remote_data_source.dart' as _i1036;
import '../data/repositories/favorite_repository_impl.dart' as _i1021;
import '../data/repositories/meal_repository_impl.dart' as _i645;
import '../domain/repositories/favorite_repository.dart' as _i629;
import '../domain/repositories/meal_repository.dart' as _i279;
import '../domain/usecases/favorites/get_favorite_meals_usecase.dart' as _i644;
import '../domain/usecases/favorites/is_favorite_usecase.dart' as _i49;
import '../domain/usecases/favorites/remove_favorite_meal_usecase.dart'
    as _i854;
import '../domain/usecases/favorites/save_favorite_meal_usecase.dart' as _i146;
import '../domain/usecases/favorites/watch_favorite_meals_usecase.dart'
    as _i640;
import '../domain/usecases/get_areas_usecase.dart' as _i420;
import '../domain/usecases/get_categories_usecase.dart' as _i350;
import '../domain/usecases/get_ingredients_usecase.dart' as _i747;
import '../domain/usecases/search_meals_by_name_usecase.dart' as _i42;
import '../presentation/features/favorites/favorite_list/bloc/favorite_list_bloc.dart'
    as _i206;
import '../presentation/features/favorites/favorite_status/bloc/favorite_status_bloc.dart'
    as _i494;
import '../presentation/features/search/bloc/search_bloc.dart' as _i1070;
import '../presentation/filter/bloc/filter_bloc.dart' as _i944;
import 'register_module.dart' as _i291;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i1036.MealRemoteDataSource>(
    () => _i1036.MealRemoteDataSourceImpl(gh<_i361.Dio>()),
  );
  gh.lazySingleton<_i978.FavoriteLocalDataSource>(
    () => _i978.FavoriteLocalDataSourceImpl(),
  );
  gh.lazySingleton<_i629.FavoriteRepository>(
    () => _i1021.FavoriteRepositoryImpl(gh<_i978.FavoriteLocalDataSource>()),
  );
  gh.lazySingleton<_i279.MealRepository>(
    () => _i645.MealRepositoryImpl(gh<_i1036.MealRemoteDataSource>()),
  );
  gh.factory<_i644.GetFavoriteMealsUseCase>(
    () => _i644.GetFavoriteMealsUseCase(gh<_i629.FavoriteRepository>()),
  );
  gh.factory<_i49.IsFavoriteUseCase>(
    () => _i49.IsFavoriteUseCase(gh<_i629.FavoriteRepository>()),
  );
  gh.factory<_i854.RemoveFavoriteMealUseCase>(
    () => _i854.RemoveFavoriteMealUseCase(gh<_i629.FavoriteRepository>()),
  );
  gh.factory<_i146.SaveFavoriteMealUseCase>(
    () => _i146.SaveFavoriteMealUseCase(gh<_i629.FavoriteRepository>()),
  );
  gh.factory<_i640.WatchFavoriteMealsUseCase>(
    () => _i640.WatchFavoriteMealsUseCase(gh<_i629.FavoriteRepository>()),
  );
  gh.factory<_i206.FavoriteListBloc>(
    () => _i206.FavoriteListBloc(gh<_i640.WatchFavoriteMealsUseCase>()),
  );
  gh.factory<_i420.GetAreasUseCase>(
    () => _i420.GetAreasUseCase(gh<_i279.MealRepository>()),
  );
  gh.factory<_i350.GetCategoriesUseCase>(
    () => _i350.GetCategoriesUseCase(gh<_i279.MealRepository>()),
  );
  gh.factory<_i747.GetIngredientsUseCase>(
    () => _i747.GetIngredientsUseCase(gh<_i279.MealRepository>()),
  );
  gh.factory<_i42.SearchMealsByNameUseCase>(
    () => _i42.SearchMealsByNameUseCase(gh<_i279.MealRepository>()),
  );
  gh.factory<_i494.FavoriteStatusBloc>(
    () => _i494.FavoriteStatusBloc(
      gh<_i49.IsFavoriteUseCase>(),
      gh<_i146.SaveFavoriteMealUseCase>(),
      gh<_i854.RemoveFavoriteMealUseCase>(),
    ),
  );
  gh.factory<_i944.FilterBloc>(
    () => _i944.FilterBloc(
      gh<_i350.GetCategoriesUseCase>(),
      gh<_i420.GetAreasUseCase>(),
      gh<_i747.GetIngredientsUseCase>(),
    ),
  );
  gh.factory<_i1070.SearchBloc>(
    () => _i1070.SearchBloc(gh<_i42.SearchMealsByNameUseCase>()),
  );
  return getIt;
}

class _$RegisterModule extends _i291.RegisterModule {}
