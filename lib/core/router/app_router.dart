import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/injection/injection_container.dart';
import 'package:recipe_app/presentation/features/home/pages/home_page.dart';
import 'package:recipe_app/presentation/features/search/bloc/search_bloc.dart';
import 'package:recipe_app/presentation/features/search/pages/search_result_page.dart';
import 'package:recipe_app/presentation/features/search/pages/search_suggestions_page.dart';
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
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/search',
              builder: (context, state) => const SearchPage(),
              routes: [
                GoRoute(
                  path: 'search_suggestions',
                  builder: (context, state) => const SearchSuggestionsPage(),
                ),
              ],
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

    GoRoute(
      path: '/search-result',
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>?;
        final query = args?['query'] as String? ?? '';

        return BlocProvider(
          create: (context) => getIt<SearchBloc>()
            ..add(
              SearchEvent.querySubmitted(query),
            ),
          child: SearchResultPage(query: query),
        );
      },
    )
  ],
);
