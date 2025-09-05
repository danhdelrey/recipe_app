import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/injection/injection_container.dart';
import 'package:recipe_app/presentation/filter/bloc/filter_bloc.dart';
import 'package:recipe_app/presentation/filter/widgets/filter_chip_section.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 60,
                  height: 3,
                  decoration: BoxDecoration(
                    color: NeutralColors.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => Navigator.pop(context),
                borderRadius: BorderRadius.circular(1000),
                child: const Icon(Icons.close, size: 24),
              ),

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lọc",
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FilledButton(
                    onPressed: () => context.read<FilterBloc>().add(
                      const FilterEvent.resetFilters(),
                    ),
                    style: FilledButton.styleFrom(
                      backgroundColor: MiscellaneousColors.tinted.withValues(
                        alpha: 0.15,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
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
              const Divider(thickness: 1),
              const SizedBox(height: 16),

              Expanded(child: _buildContent(context, state)),

              // Confirm Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: state.status == FilterStatus.loaded
                      ? () => Navigator.pop(context, {
                          "category": state.selectedCategory,
                          "ingredient": state.selectedIngredient,
                          "area": state.selectedArea,
                        })
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: Text(
                    "Xác nhận",
                    style: textTheme.titleMedium?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, FilterState state) {
    if (state.status == FilterStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.status == FilterStatus.error) {
      return Center(child: Text(state.errorMessage ?? 'Something went wrong!'));
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          FilterChipSection(
            title: 'Danh mục',
            icon: Icons.category_outlined,
            items: state.categories.map((e) => e.name).toList(),
            selectedValue: state.selectedCategory,
            onSelected: (value) => context.read<FilterBloc>().add(
              FilterEvent.categorySelected(value),
            ),
          ),
          const SizedBox(height: 24),
          FilterChipSection(
            title: 'Nguyên liệu',
            icon: Icons.kitchen_outlined,
            items: state.ingredients.map((e) => e.name).toList(),
            selectedValue: state.selectedIngredient,
            onSelected: (value) => context.read<FilterBloc>().add(
              FilterEvent.ingredientSelected(value),
            ),
          ),
          const SizedBox(height: 24),
          FilterChipSection(
            title: 'Khu vực',
            icon: Icons.public_outlined,
            items: state.areas.map((e) => e.name).toList(),
            selectedValue: state.selectedArea,
            onSelected: (value) =>
                context.read<FilterBloc>().add(FilterEvent.areaSelected(value)),
          ),
        ],
      ),
    );
  }
}

void showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) => BlocProvider(
      create: (context) =>
          getIt<FilterBloc>()..add(const FilterEvent.fetchData()),
      child: const FilterBottomSheet(),
    ),
  );
}
