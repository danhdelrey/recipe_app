part of 'favorite_status_bloc.dart';

enum FavoriteStatus { initial, loading, isFavorite, isNotFavorite, error }

@freezed
abstract class FavoriteStatusState with _$FavoriteStatusState {
  const factory FavoriteStatusState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    String? errorMessage,
  }) = _FavoriteStatusState;
}
