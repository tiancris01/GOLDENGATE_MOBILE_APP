import 'package:auth/data/data_source/auth_remote_data_sourece.dart';
import 'package:auth/data/repository/auth_repository.dart';
import 'package:auth/navigation/auth_routes.dart';
import 'package:feature_commons/module_definition/module_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

import '../ui/error_pages/page_not_found.dart';
import '../module_definition/app_module_definition.dart';
import 'app_routes.dart';

part 'app_navigation_provider.g.dart';

@riverpod
GoRouter appRouter(Ref ref, ModuleManager moduleManager) {
  final AsyncValue<User?> authState = ref.watch(authStateProvider);
  final FirebaseAuth firebaseAuth = ref.watch(firebaseAuthProvider);
  return GoRouter(
    redirect: (context, state) {
      if (authState is AsyncLoading<User?>) {
        return AppRoutes.splash;
      }
      if (authState is AsyncError<User?>) {
        return AppRoutes.firebaseError;
      }
      final authenticated = authState.value != null;
      final authenticating =
          (state.matchedLocation == AuthRoutes.signup) ||
          (state.matchedLocation == AuthRoutes.resetPassword);

      if (!authenticated) {
        return authenticating ? null : AuthRoutes.signin;
      }
      if (firebaseAuth.currentUser?.emailVerified == false) {
        return AuthRoutes.verifyEmail;
      }
      final verifyingEmail = (state.matchedLocation == AuthRoutes.verifyEmail);
      final splashing = (state.matchedLocation == AppRoutes.splash);

      return (authenticating || verifyingEmail || splashing) ? AppRoutes.home : null;
    },
    debugLogDiagnostics: true,
    initialLocation: (() {
      //TODO: improve this approach to get the initial location from the module manager
      final appModule = moduleManager.findByName(AppModuleDefinition.moduleName);
      if (appModule == null) {
        // Fallback to root or a safe default if not found
        return '/';
      }
      return appModule.initialLocation();
    })(),
    routes: moduleManager
        .modules()
        .expand((module) => module.getRouterConfig(ref).map((route) => route))
        .toList(),
    errorBuilder: (context, state) => PageNotFound(errorMessage: state.error.toString()),
  );
}
