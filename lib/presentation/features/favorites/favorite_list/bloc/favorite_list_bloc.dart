import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/utils/logger.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/usecases/favorites/watch_favorite_meals_usecase.dart';

part 'favorite_list_event.dart';
part 'favorite_list_state.dart';
part 'favorite_list_bloc.freezed.dart';

@injectable
class FavoriteListBloc extends Bloc<FavoriteListEvent, FavoriteListState> {
  final WatchFavoriteMealsUseCase _watchFavoriteMeals;

  FavoriteListBloc(this._watchFavoriteMeals)
    : super(const FavoriteListState()) {
    on<_SubscriptionRequested>(_onSubscriptionRequested);
  }

  Future<void> _onSubscriptionRequested(
    _SubscriptionRequested event,
    Emitter<FavoriteListState> emit,
  ) async {
    log.i('Subscription to favorite meals requested...');
    emit(state.copyWith(status: FavoriteListStatus.loading));

    final result = await _watchFavoriteMeals();

    await result.fold(
      (failure) async {
        log.e('Failed to subscribe to favorite meals stream.');
        emit(
          state.copyWith(
            status: FavoriteListStatus.error,
            errorMessage: 'Could not load saved meals.',
          ),
        );
      },
      (stream) async {
        log.d('Successfully subscribed to favorite meals stream.');
        await emit.forEach<List<MealEntity>>(
          stream,
          onData: (meals) {
            if (meals.isEmpty) {
              return state.copyWith(
                status: FavoriteListStatus.empty,
                meals: [],
              );
            } else {
              return state.copyWith(
                status: FavoriteListStatus.loaded,
                meals: meals,
              );
            }
          },
          onError: (_, __) {
            return state.copyWith(
              status: FavoriteListStatus.error,
              errorMessage: 'An error occurred in the stream.',
            );
          },
        );
      },
    );
  }
}
