import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({
    super.key,
    this.wrapContent = false,
    this.categories = const [
      "Danh mục 1",
      "Danh mục 2",
      "Danh mục",
      "Danh mục 3",
    ],
  });
  final bool wrapContent;
  final List<String> categories;

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return widget.wrapContent
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(widget.categories.length, (index) {
                final isSelected = index == selectedIndex;
                return _buildChoiceChip(index, isSelected, context);
              }),
            ),
          )
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: List.generate(widget.categories.length, (index) {
                  final isSelected = index == selectedIndex;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: _buildChoiceChip(index, isSelected, context),
                  );
                }),
              ),
            ),
          );
  }

  Widget _buildChoiceChip(int index, bool isSelected, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => selectedIndex = index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.black.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Text(
          widget.categories[index],
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: isSelected ? Colors.white : NeutralColors.shade800,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
