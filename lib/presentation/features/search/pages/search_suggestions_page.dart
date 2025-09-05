import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class SearchSuggestionsPage extends StatelessWidget {
  const SearchSuggestionsPage({super.key});

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
            onSubmitted: (value) {
              context.pushReplacement(
                '/search-result',
                extra: {'query': value},
              );
            },
            backgroundColor: NeutralColors.shade200,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: NeutralColors.shade800),
            suffixMode: OverlayVisibilityMode.never,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          _buildSearchSuggestionItem('Pizza hến xào', context),
          _buildSearchSuggestionItem('Pipi đút lò', context),
          _buildSearchSuggestionItem('Pizza thơm ', context),
          _buildSearchSuggestionItem('Pizza hải sản', context),
          _buildSearchSuggestionItem('Pizza thịt xông khói', context),
        ],
      ),
    );
  }

  Widget _buildSearchSuggestionItem(String suggestion, BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle suggestion tap
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
        child: Row(
          children: [
            Text(suggestion, style: Theme.of(context).textTheme.bodyLarge),
            Spacer(),
            Icon(
              Icons.chevron_right,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
