part of 'favorite_status_bloc.dart';

@freezed
abstract class FavoriteStatusEvent with _$FavoriteStatusEvent {
  /// Kiểm tra trạng thái yêu thích hiện tại của một món ăn.
  const factory FavoriteStatusEvent.checkStatus(String mealId) = _CheckStatus;

  /// Chuyển đổi trạng thái yêu thích (lưu nếu chưa lưu, xóa nếu đã lưu).
  const factory FavoriteStatusEvent.toggleFavorite(MealEntity meal) =
      _ToggleFavorite;
}
