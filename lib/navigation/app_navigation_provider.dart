import 'package:feature_commons/module_definition/module_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

import '../ui/error_pages/page_not_found.dart';
import '../module_definition/app_module_definition.dart';

part 'app_navigation_provider.g.dart';

@riverpod
GoRouter appRouter(Ref ref, ModuleManager moduleManager) {
  return GoRouter(
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
