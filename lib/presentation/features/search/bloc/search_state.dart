part of 'search_bloc.dart';

enum SearchStatus { initial, loading, loaded, empty, error }

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchStatus.initial) SearchStatus status,
    @Default([]) List<MealEntity> meals,

    /// The query that produced the current state
    @Default('') String query,
    String? errorMessage,
  }) = _SearchState;
}
