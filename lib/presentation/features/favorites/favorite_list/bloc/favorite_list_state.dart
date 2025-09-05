part of 'favorite_list_bloc.dart';

enum FavoriteListStatus { initial, loading, loaded, empty, error }

@freezed
abstract class FavoriteListState with _$FavoriteListState {
  const factory FavoriteListState({
    @Default(FavoriteListStatus.initial) FavoriteListStatus status,
    @Default([]) List<MealEntity> meals,
    String? errorMessage,
  }) = _FavoriteListState;
}
