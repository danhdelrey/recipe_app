import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/utils/logger.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/usecases/favorites/get_favorite_meals_usecase.dart';

part 'favorite_list_event.dart';
part 'favorite_list_state.dart';
part 'favorite_list_bloc.freezed.dart';

@injectable
class FavoriteListBloc extends Bloc<FavoriteListEvent, FavoriteListState> {
  final GetFavoriteMealsUseCase _getFavoriteMeals;

  FavoriteListBloc(this._getFavoriteMeals) : super(const FavoriteListState()) {
    on<_FetchFavorites>(_onFetchFavorites);
  }

  Future<void> _onFetchFavorites(
    _FetchFavorites event,
    Emitter<FavoriteListState> emit,
  ) async {
    log.i('Fetching favorite meals list...');
    emit(state.copyWith(status: FavoriteListStatus.loading));

    final result = await _getFavoriteMeals();

    result.fold(
      (failure) {
        log.e('Failed to fetch favorite meals.');
        emit(
          state.copyWith(
            status: FavoriteListStatus.error,
            errorMessage: 'Could not load saved meals.',
          ),
        );
      },
      (meals) {
        if (meals.isEmpty) {
          log.w('Favorite meals list is empty.');
          emit(state.copyWith(status: FavoriteListStatus.empty, meals: []));
        } else {
          log.d('Successfully loaded ${meals.length} favorite meals.');
          emit(state.copyWith(status: FavoriteListStatus.loaded, meals: meals));
        }
      },
    );
  }
}
