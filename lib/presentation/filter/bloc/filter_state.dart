part of 'filter_bloc.dart';

enum FilterStatus { initial, loading, loaded, error }

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState({
    @Default(FilterStatus.initial) FilterStatus status,
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<AreaEntity> areas,
    @Default([]) List<IngredientEntity> ingredients,
    String? selectedCategory,
    String? selectedArea,
    String? selectedIngredient,
    String? errorMessage,
  }) = _FilterState;
}
