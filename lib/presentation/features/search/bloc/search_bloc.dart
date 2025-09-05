import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/utils/logger.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/domain/usecases/search_meals_by_name_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMealsByNameUseCase _searchMealsUseCase;

  SearchBloc(this._searchMealsUseCase) : super(const SearchState()) {
    on<_QuerySubmitted>(_onQuerySubmitted);
  }

  Future<void> _onQuerySubmitted(
    _QuerySubmitted event,
    Emitter<SearchState> emit,
  ) async {
    // Nếu query rỗng, không làm gì cả hoặc reset state
    if (event.query.trim().isEmpty) {
      emit(const SearchState()); // Reset to initial state
      return;
    }

    log.i('Search submitted for query: "${event.query}"');
    emit(state.copyWith(status: SearchStatus.loading, query: event.query));

    final result = await _searchMealsUseCase(event.query);

    result.fold(
      (failure) {
        log.e('Search failed for query: "${event.query}"', error: failure);
        emit(
          state.copyWith(
            status: SearchStatus.error,
            errorMessage: 'Failed to perform search. Please try again.',
          ),
        );
      },
      (meals) {
        if (meals.isEmpty) {
          log.w('No meals found for query: "${event.query}"');
          emit(state.copyWith(status: SearchStatus.empty, meals: []));
        } else {
          log.d('Found ${meals.length} meals for query: "${event.query}"');
          emit(state.copyWith(status: SearchStatus.loaded, meals: meals));
        }
      },
    );
  }
}
