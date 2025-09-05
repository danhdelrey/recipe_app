import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/injection/injection_container.dart';
import 'package:recipe_app/presentation/features/favorites/favorite_status/bloc/favorite_status_bloc.dart';

/// Một widget trái tim có thể tự quản lý trạng thái yêu thích.
/// Bọc widget này và cung cấp cho nó một [MealEntity]. Nó sẽ tự động
/// kiểm tra trạng thái yêu thích và cho phép người dùng nhấn để
/// lưu hoặc xóa khỏi danh sách yêu thích.
class FavoriteHeartWidget extends StatelessWidget {
  final MealEntity meal;
  final double size;
  const FavoriteHeartWidget({super.key, required this.meal, this.size = 24.0});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FavoriteStatusBloc>()
            ..add(FavoriteStatusEvent.checkStatus(meal.id)),
      child: BlocBuilder<FavoriteStatusBloc, FavoriteStatusState>(
        builder: (context, state) {
          final isFavorite = state.status == FavoriteStatus.isFavorite;
          Widget child;
          if (state.status == FavoriteStatus.loading ||
              state.status == FavoriteStatus.initial) {
            child = SizedBox(
              width: size,
              height: size,
              child: const CircularProgressIndicator(
                strokeWidth: 2.0,
                color: Colors.grey,
              ),
            );
          } else {
            child = Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : NeutralColors.shade700,
              size: size,
            );
          }

          return GestureDetector(
            onTap: () {
              context.read<FavoriteStatusBloc>().add(
                FavoriteStatusEvent.toggleFavorite(meal),
              );
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Container(
                key: ValueKey<FavoriteStatus>(state.status),
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
