import '../ui/auth/view/auth.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_routes.dart';

part 'auth_navigation.g.dart';

@riverpod
List<GoRoute> authRoute(Ref ref) {
  return [
    GoRoute(
      path: '/signin',
      name: AuthRoutes.signin,
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/signup',
      name: AuthRoutes.signup,
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/resetPassword',
      name: AuthRoutes.resetPassword,
      builder: (context, state) => const ResetPasswordPage(),
    ),
    GoRoute(
      path: '/verifyEmail',
      name: AuthRoutes.verifyEmail,
      builder: (context, state) => const VerifyEmailPage(),
    ),
  ];
}
