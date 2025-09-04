import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/presentation/features/home/widgets/category_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: _buildSearchBar(),
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
            SliverToBoxAdapter(child: SizedBox(height: 50)),
          ],
        ),
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
              return _buildLocalCard(context);
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

  Widget _buildLocalCard(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8.0),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  left: 6,
                  top: 6,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: PrimaryColors.shade500,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 13),
                        const SizedBox(width: 4),
                        Text(
                          '5',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Ionicons.play,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 6.0),
              child: Row(
                children: [
                  Text(
                    '1 tiếng 20 phút',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Ionicons.heart_outline, size: 16, color: Colors.black),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Cách chiên trứng một cách cung phu ',
                style: Theme.of(context).textTheme.labelLarge,
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
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    backgroundColor: NeutralColors.shade50,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Đinh Trọng Phúc',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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

  Padding _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: CupertinoSearchTextField(
        placeholder: "Tìm kiếm sản phẩm",
        onChanged: (value) {
          // TODO: search logic
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
