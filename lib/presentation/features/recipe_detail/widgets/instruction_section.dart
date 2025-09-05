import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';

class InstructionSection extends StatefulWidget {
  const InstructionSection({super.key, required this.meal});

  final MealEntity meal;

  @override
  State<InstructionSection> createState() => _InstructionSectionState();
}

class _InstructionSectionState extends State<InstructionSection> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 24),
            Expanded(
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    selectedTab = 0;
                  });
                },
                style: FilledButton.styleFrom(
                  backgroundColor: selectedTab == 0
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Nguyên liệu",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: selectedTab == 0
                        ? Colors.white
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 24),

            Expanded(
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    selectedTab = 1;
                  });
                },
                style: FilledButton.styleFrom(
                  backgroundColor: selectedTab == 1
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Chế biến",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: selectedTab == 1
                        ? Colors.white
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 24),
          ],
        ),
        const SizedBox(height: 24),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            selectedTab == 0
                ? widget.meal.ingredients
                      .map(
                        (i) =>
                            i.name +
                            (i.measure.isNotEmpty ? ' - ${i.measure}' : ''),
                      )
                      .join('\n')
                : widget.meal.instructions,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: NeutralColors.shade700),
          ),
        ),
      ],
    );
  }
}
