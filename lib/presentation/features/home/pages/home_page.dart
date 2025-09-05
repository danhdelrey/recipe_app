import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/presentation/features/home/widgets/category_selector.dart';
import 'package:recipe_app/presentation/features/home/widgets/local_recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: _buildSearchBar(context),
            pinned: false,
            floating: true,
            snap: true,
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            titleSpacing: 0,
          ),
          SliverToBoxAdapter(child: _buildLocalSection(context)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: _buildCategorySection(context)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: _buildRecentRecipeSection(context)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: _buildIngredientSection(context)),
          SliverToBoxAdapter(child: SizedBox(height: 200)),
        ],
      ),
    );
  }

  Column _buildLocalSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                'TP. Hồ Chí Minh',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  // TODO: view all products
                },
                child: Text(
                  'Xem tất cả',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 267,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return LocalRecipeCard();
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
          ),
        ),
      ],
    );
  }

  Column _buildCategorySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                'Danh mục',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  'Xem tất cả',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        CategorySelector(),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Row(
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16, top: 10),
                  child: _buildCategoryRecipeCard(context),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildRecentRecipeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
          child: Text(
            'Công thức gần đây',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: _buildRecentRecipeCard(context),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildIngredientSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
          child: Text(
            'Nguyên liệu',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 12),
        CategorySelector(
          wrapContent: true,
          categories: [
            "Danh mục 1",
            "Danh mục 2",
            "Danh mục",
            "Danh mục 3",
            "Danh mục 1",
            "Danh mục 2",
            "Danh mục",
            "Danh mục 3",
          ],
        ),
      ],
    );
  }

  SizedBox _buildCategoryRecipeCard(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Thẻ màu vàng
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            decoration: BoxDecoration(
              color: MiscellaneousColors.tinted.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 33),
                Text(
                  "Trứng chiên",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: PrimaryColors.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                Text(
                  "Tạo bởi\nTrần Đình Trọng",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: PrimaryColors.shade950,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 33),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20 phút",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: PrimaryColors.shade950,
                      ),
                    ),
                    Icon(
                      Icons.sticky_note_2_outlined,
                      size: 24,
                      color: PrimaryColors.shade900,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Ảnh tròn
          Positioned(
            top: -10,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/egg.jpg'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentRecipeCard(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8.0),
      child: Ink(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/recent_recipe.png',
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Trứng chiên',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: PrimaryColors.shade900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 6.0,
                right: 6.0,
                bottom: 6.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 9,
                    backgroundImage: AssetImage('assets/images/avt2.png'),
                    backgroundColor: NeutralColors.shade50,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Nguyễn Đình Trọng',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: SecondaryColors.shade950,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: InkWell(
        onTap: () {
          context.push('/home/home_search');
        },
        child: CupertinoSearchTextField(
          enabled: false,
          placeholder: "Tìm kiếm sản phẩm",
          onChanged: (value) {
            // TODO: search logic
          },
          backgroundColor: Colors.white,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: NeutralColors.shade800),
        ),
      ),
    );
  }
}
