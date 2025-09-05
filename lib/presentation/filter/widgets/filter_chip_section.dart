import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class FilterChipSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String> onSelected;

  const FilterChipSection({
    super.key,
    required this.title,
    required this.icon,
    required this.items,
    this.selectedValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).primaryColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: NeutralColors.shade800),
            const SizedBox(width: 6),
            Text(
              title,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: NeutralColors.shade950,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: items
              .map(
                (item) => ChoiceChip(
                  showCheckmark: false,
                  label: Text(item),
                  selected: selectedValue == item,
                  onSelected: (_) => onSelected(item),
                  selectedColor: primaryColor,
                  labelStyle: textTheme.bodyMedium?.copyWith(
                    color: selectedValue == item
                        ? Colors.white
                        : NeutralColors.shade800,
                  ),
                  backgroundColor: NeutralColors.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: NeutralColors.shade200),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
