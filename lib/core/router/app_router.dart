import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/presentation/features/home/pages/home_page.dart';
import 'package:recipe_app/presentation/features/home_search/pages/home_search_page.dart';
import 'package:recipe_app/presentation/features/introduction/pages/introduction_page.dart';
import 'package:recipe_app/presentation/features/profile/pages/profile_page.dart';
import 'package:recipe_app/presentation/features/recipe_detail/pages/recipe_detail_page.dart';
import 'package:recipe_app/presentation/features/saved/pages/saved_page.dart';
import 'package:recipe_app/presentation/features/search/pages/search_page.dart';
import 'package:recipe_app/presentation/shell/main_shell.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/introduction',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                  path: 'home_search',
                  builder: (context, state) => const HomeSearchPage(),
                ),
              ],
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/search',
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/saved',
              builder: (context, state) => const SavedPage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),

    GoRoute(
      path: '/introduction',
      builder: (context, state) => const IntroductionPage(),
    ),

    GoRoute(
      path: '/recipe-detail',
      builder: (context, state) => RecipeDetailPage(),
    ),
  ],
);
