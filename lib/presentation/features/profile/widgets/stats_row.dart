import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  Widget _buildItem(BuildContext context, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Colors.grey),
        ),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildItem(context, "Bài viết", "100"),
            _buildDivider(),
            _buildItem(context, "Người theo dõi", "100"),
            _buildDivider(),
            _buildItem(context, "Theo dõi", "100"),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: const VerticalDivider(width: 1, thickness: 1, color: Colors.grey),
  );
}
