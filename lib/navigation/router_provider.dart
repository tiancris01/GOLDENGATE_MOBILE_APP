import 'package:auth/ui/auth/view/auth.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/error_pages/error_pages.dart';
import '../ui/home/home.dart';
import 'route_names.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: RouteNames.splash,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(path: '/signin', name: RouteNames.signin, builder: (context, state) => const SignInPage()),
      GoRoute(path: '/signup', name: RouteNames.signup, builder: (context, state) => const SignUpPage()),
      GoRoute(path: '/resetPassword', name: RouteNames.resetPassword, builder: (context, state) => const ResetPasswordPage()),
      GoRoute(path: '/verifyEmail', name: RouteNames.verifyEmail, builder: (context, state) => const VerifyEmailPage()),
      GoRoute(
        path: '/home',
        name: RouteNames.home,
        builder: (context, state) => const HomePage(),
        routes: [GoRoute(path: 'changePassword', name: RouteNames.changePassword, builder: (context, state) => const ChangePasswordPage())],
      ),
      GoRoute(path: '/firebaseError', name: RouteNames.firebaseError, builder: (context, state) => const FirebaseErrorPage()),
    ],
    errorBuilder: (context, state) => PageNotFound(errorMessage: state.error.toString()),
  );
}
