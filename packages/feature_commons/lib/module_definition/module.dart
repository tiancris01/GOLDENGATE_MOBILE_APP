import 'package:go_router/go_router.dart';

abstract class Module<T> {
  final String _name;
  String get name => _name;

  Module(this._name);

  /// Returns a list of [GoRoute] objects that define the routing configuration for this module.
  List<GoRoute> getRouterConfig(T ref);

  /// Returns a map of route redirection flags for this module.
  Map<String, String> getRouteRedirectionFlags();

  /// Override this method in subclasses to specify the initial route location.
  String? initialLocation() {
    return null;
  }
}
