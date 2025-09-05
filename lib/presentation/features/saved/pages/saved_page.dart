import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

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
      body: const Center(child: Text('This is the Saved Page')),
    );
  }
}
