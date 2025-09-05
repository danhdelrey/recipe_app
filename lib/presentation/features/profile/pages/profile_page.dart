import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_colors.dart';
import 'package:recipe_app/presentation/features/profile/widgets/stats_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
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
      body: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/avatar.png'),
            backgroundColor: NeutralColors.shade50,
          ),
          const SizedBox(height: 8),
          Text(
            'Nguyễn Đình Trọng',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: PrimaryColors.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          StatsRow(),
          const SizedBox(height: 8),
          _buildSocialButtons(context),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Danh sách yêu thích',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: NeutralColors.shade950,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), //để ListView cuộn
                  children: List.generate(29, (index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/recent_recipe.png",
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildSocialButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 120,
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
                  "Follow",
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

        SizedBox(
          width: 120,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(1000),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: MiscellaneousColors.tinted.withValues(alpha: 0.15),
              ),
              child: Center(
                child: Text(
                  "Message",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
