import 'package:feature_commons/module_definition/module.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../navigation/app_navigation.dart';

class AppModuleDefinition extends Module<Ref> {
  static String moduleName = 'AppModuleDefinition';
  AppModuleDefinition() : super(moduleName);

  @override
  Map<String, String> getRouteRedirectionFlags() {
    // TODO: implement getRouteRedirectionFlags
    throw UnimplementedError();
  }

  @override
  List<GoRoute> getRouterConfig(Ref ref) {
    return ref.read(appRouteProvider);
  }
}
