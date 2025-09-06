part of 'favorite_list_bloc.dart';

@freezed
abstract class FavoriteListEvent with _$FavoriteListEvent {
  const factory FavoriteListEvent.subscriptionRequested() =
      _SubscriptionRequested;
}
