import 'package:go_router/go_router.dart';

import '../feature_commons.dart';

class FeatureCommonsModuleDefinitions extends Module<dynamic> {
  FeatureCommonsModuleDefinitions() : super('feature_commons');

  @override
  List<GoRoute> getRouterConfig() {
    // TODO: Implement routes if needed
    return [];
  }

  @override
  Map<String, String> getRouteRedirectionFlags() {
    // TODO: Implement redirection flags if needed
    return {};
  }
}
