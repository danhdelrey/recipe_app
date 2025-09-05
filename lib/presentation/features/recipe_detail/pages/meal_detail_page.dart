import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';
import 'package:recipe_app/presentation/features/favorites/favorite_status/widgets/favorite_heart_widget.dart';
import 'package:recipe_app/presentation/features/recipe_detail/widgets/instruction_section.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({super.key, required this.meal});

  final MealEntity meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            expandedHeight: 250,
            pinned: true,
            title: InkWell(
              onTap: () {
                context.pop();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.chevron_left, size: 24, color: Colors.black),

                  Text(
                    "Chi tiết",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: meal.thumbnail,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[300],
                  child: Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[300],
                  child: Icon(Icons.error),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16,
                  ),
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(right: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: meal.thumbnail,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              color: Colors.grey[300],
                              child: Center(child: CircularProgressIndicator()),
                            ),
                            errorWidget: (context, url, error) => Container(
                              color: Colors.grey[300],
                              child: Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            meal.name,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        FavoriteHeartWidget(meal: meal),
                      ],
                    ),
                    SizedBox(height: 6),

                    Text(
                      meal.category,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: NeutralColors.shade700,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          "4.2",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: NeutralColors.shade700),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          height: 16,
                          child: VerticalDivider(
                            color: NeutralColors.shade700,
                            thickness: 1,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "120 đánh giá",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: NeutralColors.shade700),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            'assets/images/avatar.png',
                          ),
                          backgroundColor: NeutralColors.shade50,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Đinh Trọng Phúc',
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Divider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: 2,
                    ),
                    SizedBox(height: 24),
                    InstructionSection(meal: meal),

                    SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: MiscellaneousColors.tinted
                              .withValues(alpha: 0.15),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        icon: Icon(
                          Icons.live_tv,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        label: Text(
                          "Xem video",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(height: 34),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
