import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/presentation/features/favorites/favorite_list/bloc/favorite_list_bloc.dart';

class FavoriteGridView extends StatelessWidget {
  const FavoriteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteListBloc, FavoriteListState>(
      builder: (context, state) {
        switch (state.status) {
          case FavoriteListStatus.loading:
          case FavoriteListStatus.initial:
            return const Center(child: CircularProgressIndicator());

          case FavoriteListStatus.error:
            return Center(
              child: Text(
                state.errorMessage ?? 'Không thể tải danh sách yêu thích.',
              ),
            );

          case FavoriteListStatus.empty:
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Chưa có món ăn yêu thích nào',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            );

          case FavoriteListStatus.loaded:
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
              ),
              itemCount: state.meals.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final meal = state.meals[index];
                return GestureDetector(
                  onTap: () {
                    context.push('/meal-detail', extra: {'meal': meal});
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: meal.thumbnail,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: CircularProgressIndicator(strokeWidth: 2.0),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey[200],
                        child: const Icon(
                          Icons.broken_image,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
        }
      },
    );
  }
}
