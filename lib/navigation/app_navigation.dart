import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/home/home.dart';
import 'app_routes.dart';

part 'app_navigation.g.dart';

@riverpod
List<GoRoute> appRoute(Ref ref) {
  return [
    GoRoute(
      path: '/splash',
      name: AppRoutes.splash,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: '/home',
      name: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ];
}

/* GoRouter router(Ref ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/splash',
        name: AppRoutes.splash,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: '/home',
        name: AppRoutes.home,
        builder: (context, state) => const HomePage(),
      ),
    ],
    errorBuilder: (context, state) => PageNotFound(errorMessage: state.error.toString()),
  );
} */
