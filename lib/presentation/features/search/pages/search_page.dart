import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/presentation/filter/pages/filter_bottom_sheet.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: CupertinoSearchTextField(
                  placeholder: "Tìm kiếm sản phẩm",
                  onChanged: (value) {},
                  backgroundColor: NeutralColors.shade200,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: NeutralColors.shade800,
                  ),
                  suffixMode: OverlayVisibilityMode.never,
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  showFilterBottomSheet(context);
                },
                borderRadius: BorderRadius.circular(8),
                child: Icon(
                  Icons.filter_alt,
                  color: Theme.of(context).colorScheme.primary,
                  size: 36,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.75,
          ),
          itemCount: 4, // For 2x2 grid
          itemBuilder: (context, index) {
            return _buildSearchResultItem(context);
          },
        ),
      ),
    );
  }

  Widget _buildSearchResultItem(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/salad.png',
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.75),
                  ),
                  child: Icon(Ionicons.heart, color: Colors.red, size: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              children: [
                Text(
                  'Salad bò kiểu Thái',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: NeutralColors.shade950,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'By Little Pony',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: NeutralColors.shade400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.time_outline,
                          color: Theme.of(context).colorScheme.primary,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '20m',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: NeutralColors.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
