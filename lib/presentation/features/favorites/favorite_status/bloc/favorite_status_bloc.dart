import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/utils/logger.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/usecases/favorites/is_favorite_usecase.dart';
import 'package:recipe_app/domain/usecases/favorites/remove_favorite_meal_usecase.dart';
import 'package:recipe_app/domain/usecases/favorites/save_favorite_meal_usecase.dart';

part 'favorite_status_event.dart';
part 'favorite_status_state.dart';
part 'favorite_status_bloc.freezed.dart';

@injectable
class FavoriteStatusBloc
    extends Bloc<FavoriteStatusEvent, FavoriteStatusState> {
  final IsFavoriteUseCase _isFavorite;
  final SaveFavoriteMealUseCase _saveFavorite;
  final RemoveFavoriteMealUseCase _removeFavorite;

  FavoriteStatusBloc(this._isFavorite, this._saveFavorite, this._removeFavorite)
    : super(const FavoriteStatusState()) {
    on<_CheckStatus>(_onCheckStatus);
    on<_ToggleFavorite>(_onToggleFavorite);
  }

  Future<void> _onCheckStatus(
    _CheckStatus event,
    Emitter<FavoriteStatusState> emit,
  ) async {
    emit(state.copyWith(status: FavoriteStatus.loading));
    final result = await _isFavorite(event.mealId);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: FavoriteStatus.error,
          errorMessage: 'Could not check status',
        ),
      ),
      (isFav) => emit(
        state.copyWith(
          status: isFav
              ? FavoriteStatus.isFavorite
              : FavoriteStatus.isNotFavorite,
        ),
      ),
    );
  }

  Future<void> _onToggleFavorite(
    _ToggleFavorite event,
    Emitter<FavoriteStatusState> emit,
  ) async {
    final bool isCurrentlyFavorite = state.status == FavoriteStatus.isFavorite;
    log.i(
      'Toggling favorite status for meal: ${event.meal.name}. Currently favorite: $isCurrentlyFavorite',
    );

    if (isCurrentlyFavorite) {
      final result = await _removeFavorite(event.meal.id);
      result.fold(
        (failure) {
          log.e('Failed to remove favorite: ${event.meal.name}');
          emit(
            state.copyWith(
              status: FavoriteStatus.error,
              errorMessage: 'Failed to remove favorite',
            ),
          );
        },
        (_) {
          log.d('Successfully removed favorite: ${event.meal.name}');
          emit(state.copyWith(status: FavoriteStatus.isNotFavorite));
        },
      );
    } else {
      final result = await _saveFavorite(event.meal);
      result.fold(
        (failure) {
          log.e('Failed to save favorite: ${event.meal.name}');
          emit(
            state.copyWith(
              status: FavoriteStatus.error,
              errorMessage: 'Failed to save favorite',
            ),
          );
        },
        (_) {
          log.d('Successfully saved favorite: ${event.meal.name}');
          emit(state.copyWith(status: FavoriteStatus.isFavorite));
        },
      );
    }
  }
}
