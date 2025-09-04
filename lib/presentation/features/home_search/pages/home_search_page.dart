import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class HomeSearchPage extends StatelessWidget {
  const HomeSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: CupertinoSearchTextField(
            autofocus: true,
            placeholder: "Tìm kiếm sản phẩm",
            onChanged: (value) {},
            backgroundColor: NeutralColors.shade200,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: NeutralColors.shade800),
            suffixMode: OverlayVisibilityMode.never,
          ),
        ),
      ),
      body: const Center(child: Text('This is the Home Search Page')),
    );
  }
}
