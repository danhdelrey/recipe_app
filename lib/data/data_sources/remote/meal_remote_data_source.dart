import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/error/exceptions.dart';
import 'package:recipe_app/core/utils/logger.dart';
import 'package:recipe_app/data/models/area_model.dart';
import 'package:recipe_app/data/models/category_model.dart';
import 'package:recipe_app/data/models/ingredient_model.dart';
import 'package:recipe_app/data/models/meal_api_response.dart';
import 'package:recipe_app/data/models/meal_model.dart';

abstract class MealRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
  Future<List<AreaModel>> getAreas();
  Future<List<IngredientModel>> getIngredients();
  Future<List<MealModel>> searchMealsByName(String query);
}

@LazySingleton(as: MealRemoteDataSource)
class MealRemoteDataSourceImpl implements MealRemoteDataSource {
  final Dio dio;
  MealRemoteDataSourceImpl(this.dio);

  static const String baseUrl = 'https://www.themealdb.com/api/json/v1/1/';

  Future<List<T>> _fetchData<T>(
    String endpoint,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    log.i('Fetching data from endpoint: $endpoint');
    try {
      final response = await dio.get('$baseUrl$endpoint');
      if (response.statusCode == 200) {
        final apiResponse = MealApiResponse.fromJson(
          response.data,
          (json) => fromJson(json as Map<String, dynamic>),
        );
        log.d('Successfully fetched ${apiResponse.meals.length} items.');
        return apiResponse.meals;
      } else {
        log.w('Server returned non-200 status: ${response.statusCode}');
        throw ServerException();
      }
    } catch (e) {
      log.e('Failed to fetch data from $endpoint', error: e);
      throw ServerException();
    }
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    return _fetchData('list.php?c=list', CategoryModel.fromJson);
  }

  @override
  Future<List<AreaModel>> getAreas() async {
    return _fetchData('list.php?a=list', AreaModel.fromJson);
  }

  @override
  Future<List<IngredientModel>> getIngredients() async {
    return _fetchData('list.php?i=list', IngredientModel.fromJson);
  }

  @override
  Future<List<MealModel>> searchMealsByName(String query) async {
    return _fetchData('search.php?s=$query', MealModel.fromJson);
  }
}
