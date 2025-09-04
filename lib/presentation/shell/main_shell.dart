import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/theme/app_colors.dart';

class MainShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainShell({required this.navigationShell, super.key});

  void _onTap(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: PrimaryColors.shade400,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: NeutralColors.shade900, size: 32),
      ),

      // BottomAppBar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home_outlined, 'Home', 0),
            _buildNavItem(Icons.search, 'Search', 1),
            const SizedBox(width: 40),
            _buildNavItem(Icons.bookmark_border, 'Saved', 2),
            _buildNavItem(Icons.person_outline, 'Profile', 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = navigationShell.currentIndex == index;
    return IconButton(
      icon: Icon(icon, color: isSelected ? PrimaryColors.shade600 : NeutralColors.shade400),
      onPressed: () => _onTap(index),
    );
  }
}
