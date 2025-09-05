import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/utils/logger.dart';
import 'package:recipe_app/domain/entities/area_entity.dart';
import 'package:recipe_app/domain/entities/category_entity.dart';
import 'package:recipe_app/domain/entities/ingredient_entity.dart';
import 'package:recipe_app/domain/usecases/get_areas_usecase.dart';
import 'package:recipe_app/domain/usecases/get_categories_usecase.dart';
import 'package:recipe_app/domain/usecases/get_ingredients_usecase.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final GetCategoriesUseCase _getCategories;
  final GetAreasUseCase _getAreas;
  final GetIngredientsUseCase _getIngredients;

  FilterBloc(this._getCategories, this._getAreas, this._getIngredients)
    : super(const FilterState()) {
    on<_FetchData>(_onFetchData);
    on<_CategorySelected>(
      (event, emit) => emit(state.copyWith(selectedCategory: event.category)),
    );
    on<_AreaSelected>(
      (event, emit) => emit(state.copyWith(selectedArea: event.area)),
    );
    on<_IngredientSelected>(
      (event, emit) =>
          emit(state.copyWith(selectedIngredient: event.ingredient)),
    );
    on<_ResetFilters>(
      (event, emit) => emit(
        state.copyWith(
          selectedCategory: null,
          selectedArea: null,
          selectedIngredient: null,
        ),
      ),
    );
  }

  Future<void> _onFetchData(_FetchData event, Emitter<FilterState> emit) async {
    emit(state.copyWith(status: FilterStatus.loading));
    log.i('Fetching filter data...');

    // Fetch all data concurrently for better performance
    final results = await Future.wait([
      _getCategories(),
      _getAreas(),
      _getIngredients(),
    ]);

    final categoriesResult = results[0] as dynamic;
    final areasResult = results[1] as dynamic;
    final ingredientsResult = results[2] as dynamic;

    bool hasError = false;

    categoriesResult.fold((failure) {
      log.e('Failed to fetch categories.');
      hasError = true;
    }, (categories) => emit(state.copyWith(categories: categories as List<CategoryEntity>)));

    areasResult.fold((failure) {
      log.e('Failed to fetch areas.');
      hasError = true;
    }, (areas) => emit(state.copyWith(areas: areas as List<AreaEntity>)));

    ingredientsResult.fold((failure) {
      log.e('Failed to fetch ingredients.');
      hasError = true;
    }, (ingredients) => emit(state.copyWith(ingredients: ingredients as List<IngredientEntity>)));

    if (hasError) {
      emit(
        state.copyWith(
          status: FilterStatus.error,
          errorMessage: 'Failed to load filter data. Please try again.',
        ),
      );
      log.w('Finished fetching filter data with errors.');
    } else {
      emit(state.copyWith(status: FilterStatus.loaded));
      log.d('Successfully fetched all filter data.');
    }
  }
}
