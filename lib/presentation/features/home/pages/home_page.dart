import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_searchFocusNode.hasFocus) {
      _searchFocusNode.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification is ScrollUpdateNotification) {
              _onScroll();
            }
            return false;
          },
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
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(title: Text('Item #$index')),
                  childCount: 50,
                ),
              ),
            ],
          ),
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

  Padding _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: CupertinoSearchTextField(
        focusNode: _searchFocusNode,
        placeholder: "Tìm kiếm sản phẩm",
        onChanged: (value) {
          // TODO: search logic
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
