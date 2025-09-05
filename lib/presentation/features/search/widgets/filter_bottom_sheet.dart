import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String selectedCategory = "Danh mục 1";
  String selectedIngredient = "Thịt gà";
  String selectedArea = "Long An";

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 60,
                height: 4,
                decoration: BoxDecoration(
                  color: NeutralColors.shade900,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(1000),
              child: Icon(Icons.close, size: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lọc",
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = "";
                      selectedIngredient = "";
                      selectedArea = "";
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: MiscellaneousColors.tinted.withValues(
                      alpha: 0.15,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Đặt lại",
                    style: textTheme.bodyMedium?.copyWith(color: primary),
                  ),
                ),
              ],
            ),
            Divider(color: NeutralColors.shade200, thickness: 1),
            const SizedBox(height: 24),

            // Danh mục
            Row(
              children: [
                Icon(Icons.quickreply, color: NeutralColors.shade800),
                const SizedBox(width: 6),
                Text(
                  "Danh mục",
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: NeutralColors.shade950,
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 8,
              children: ["Danh mục 1", "Danh mục 2", "Danh mục 3", "Danh mục 4"]
                  .map(
                    (e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e),
                      selected: selectedCategory == e,
                      onSelected: (_) => setState(() => selectedCategory = e),
                      selectedColor: primary,
                      labelStyle: textTheme.bodyMedium?.copyWith(
                        color: selectedCategory == e
                            ? Colors.white
                            : NeutralColors.shade800,
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 48),

            Row(
              children: [
                Icon(Icons.quickreply, color: NeutralColors.shade800),
                const SizedBox(width: 6),
                Text(
                  "Nguyên liệu",
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: NeutralColors.shade950,
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 8,
              children: ["Thịt gà", "Thịt heo", "Danh mục", "Ức gà", "Chân gà"]
                  .map(
                    (e) => ChoiceChip(
                      showCheckmark: false,
                      label: Text(e),
                      selected: selectedIngredient == e,
                      onSelected: (_) => setState(() => selectedIngredient = e),
                      selectedColor: primary,
                      labelStyle: textTheme.bodyMedium?.copyWith(
                        color: selectedIngredient == e
                            ? Colors.white
                            : NeutralColors.shade800,
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 48),

            Row(
              children: [
                Icon(Icons.quickreply, color: NeutralColors.shade800),
                const SizedBox(width: 6),
                Text(
                  "Khu vực",
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: NeutralColors.shade950,
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 8,
              children:
                  ["TP.HCM", "Bình Phước", "Đồng Nai", "An Giang", "Long An"]
                      .map(
                        (e) => ChoiceChip(
                          showCheckmark: false,
                          label: Text(e),
                          selected: selectedArea == e,
                          onSelected: (_) => setState(() => selectedArea = e),
                          selectedColor: primary,
                          labelStyle: textTheme.bodyMedium?.copyWith(
                            color: selectedArea == e
                                ? Colors.white
                                : NeutralColors.shade800,
                          ),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 24),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context, {
                  "category": selectedCategory,
                  "ingredient": selectedIngredient,
                  "area": selectedArea,
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Xác nhận",
                  style: textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Gọi bottom sheet
void showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => const FilterBottomSheet(),
  );
}
