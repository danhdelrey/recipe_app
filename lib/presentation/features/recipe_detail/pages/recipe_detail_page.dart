import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 300,
            pinned: true,
            title: Text('Chi tiết'),
            titleSpacing: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/image1.png',
                fit: BoxFit.cover,
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
                          child: Image.asset(
                            'assets/images/thumbnail.png',
                            fit: BoxFit.cover,
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
                            'Cách chiên trứng một cách cung phu ',
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Ionicons.heart_outline,
                          size: 24,
                          color: NeutralColors.shade700,
                        ),
                      ],
                    ),
                    SizedBox(height: 6),

                    Text(
                      'Cách chiên trứng một cách cung phu ',
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
