part of 'filter_bloc.dart';

@freezed
abstract class FilterEvent with _$FilterEvent {
  // Event to trigger fetching all data
  const factory FilterEvent.fetchData() = _FetchData;
  // Event when a user selects a category
  const factory FilterEvent.categorySelected(String category) = _CategorySelected;
  // Event when a user selects an area
  const factory FilterEvent.areaSelected(String area) = _AreaSelected;
  // Event when a user selects an ingredient
  const factory FilterEvent.ingredientSelected(String ingredient) = _IngredientSelected;
  // Event to reset all selections
  const factory FilterEvent.resetFilters() = _ResetFilters;
}