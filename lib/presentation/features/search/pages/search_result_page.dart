import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/presentation/features/search/bloc/search_bloc.dart';
import 'package:recipe_app/presentation/filter/pages/filter_bottom_sheet.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    context.push('/search/search_suggestions');
                  },
                  child: CupertinoSearchTextField(
                    enabled: false,
                    placeholder: "Tìm kiếm sản phẩm",
                    onChanged: (value) {},
                    backgroundColor: NeutralColors.shade200,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: NeutralColors.shade800,
                    ),
                    suffixMode: OverlayVisibilityMode.never,
                  ),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  showFilterBottomSheet(context);
                },
                borderRadius: BorderRadius.circular(8),
                child: Icon(
                  Icons.filter_alt,
                  color: Theme.of(context).colorScheme.primary,
                  size: 36,
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return switch (state.status) {
            SearchStatus.initial => Center(
              child: Text(
                'Hãy nhập từ khóa để tìm kiếm',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: NeutralColors.shade400),
              ),
            ),
            SearchStatus.loading => Center(child: CircularProgressIndicator()),
            SearchStatus.loaded =>
              state.meals.isEmpty
                  ? Center(
                      child: Text(
                        'Không tìm thấy kết quả nào cho "$query"',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: NeutralColors.shade400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: state.meals.length,
                        itemBuilder: (context, index) {
                          final meal = state.meals[index];
                          return _buildSearchResultItem(meal, context);
                        },
                      ),
                    ),
            SearchStatus.empty => Center(
              child: Text(
                'Không tìm thấy kết quả nào cho "$query"',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: NeutralColors.shade400),
                textAlign: TextAlign.center,
              ),
            ),
            SearchStatus.error => Center(
              child: Text(
                state.errorMessage ?? 'Đã có lỗi xảy ra. Vui lòng thử lại.',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          };
        },
      ),
    );
  }

  Widget _buildSearchResultItem(MealEntity meal, BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/meal-detail', extra: {'meal': meal});
      },
      borderRadius: BorderRadius.circular(12.0),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: CachedNetworkImage(
                    imageUrl: meal.thumbnail,
                    height: 150,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      height: 150,
                      color: NeutralColors.shade200,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      height: 150,
                      color: NeutralColors.shade200,
                      child: Icon(Icons.error, color: NeutralColors.shade400),
                    ),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: 0.75),
                    ),
                    child: Icon(Ionicons.heart, color: Colors.red, size: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
              child: Column(
                children: [
                  Text(
                    meal.name,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: NeutralColors.shade950,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'By Little Pony',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: NeutralColors.shade400),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Ionicons.time_outline,
                            color: Theme.of(context).colorScheme.primary,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '20m',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: NeutralColors.shade700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
