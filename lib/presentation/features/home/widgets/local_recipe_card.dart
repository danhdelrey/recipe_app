import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class LocalRecipeCard extends StatelessWidget {
  const LocalRecipeCard({
    super.key,
    this.imageAsset = 'assets/images/image1.png',
    this.width = 250,
    this.imageHeight,
  });

  final String imageAsset;
  final double width;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/recipe-detail');
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imageAsset,
                    fit: BoxFit.cover,
                    height: imageHeight,
                    width: width,
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
}
