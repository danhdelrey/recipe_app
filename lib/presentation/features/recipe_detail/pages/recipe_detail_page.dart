import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

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
                    SizedBox(height: 24),
                    Row(
                      children: [
                        SizedBox(width: 24),
                        Expanded(
                          child: FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Nguyên liệu",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 24),

                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Chế biến",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24),
                      ],
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dành cho 2-4 người ăn',
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '300g chân gà, luộc trong 20 phút\n2 chiếc xúc xích bò\n5 viên thịt bò\n100g bánh sắn, luộc cho đến khi mềm\n1 quả trứng đánh tan\n50 cải xanh, cắt thành 4 miếng',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: NeutralColors.shade700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Đối với bột gia vị',
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '15g tỏi\n3g mắm tôm\n25g hành tím\n50g gừng thơm\n100g ớt đỏ lớn\n50g ớt cay\n7g muối\n15g đường\n15g hành tây chiên\n25g bột gà\n50ml dầu ăn',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: NeutralColors.shade700),
                          ),
                        ],
                      ),
                    ),
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
