import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/presentation/features/home/widgets/local_recipe_card.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          'Công thức',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: PrimaryColors.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            height: 1.0,
            thickness: 1.0,
            color: NeutralColors.shade300,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Center(
                        child: Text(
                          "Video",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),

                Expanded(
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: MiscellaneousColors.tinted.withValues(
                          alpha: 0.15,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Công thức",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          LocalRecipeCard(width: double.infinity, imageHeight: 140),
          SizedBox(height: 10),
          LocalRecipeCard(width: double.infinity, imageHeight: 140),
          SizedBox(height: 10),
          LocalRecipeCard(width: double.infinity, imageHeight: 140),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
