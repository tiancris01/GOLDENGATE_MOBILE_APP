import 'module.dart';

class ModuleManager {
  // Singleton implementation
  ModuleManager._internal();
  static final ModuleManager _instance = ModuleManager._internal();
  factory ModuleManager() => _instance;

  final Map<String, Module<dynamic>> _modules = {};

  /// Registers a module and returns the singleton instance for chaining.
  ModuleManager registerModule(Module<dynamic> module) {
    _modules[module.name] = module;
    return this;
  }

  /// Unregisters a module by instance and returns the removed module, if any.
  Module<dynamic>? unregisterModule(Module<dynamic> module) {
    return _modules.remove(module.name);
  }

  /// Unregisters a module by name and returns the removed module, if any.
  Module<dynamic>? unregisterModuleByName(String name) {
    return _modules.remove(name);
  }

  /// Returns all registered modules as an iterable.
  Iterable<Module<dynamic>> modules() {
    return _modules.values;
  }

  /// Finds a module by its name.
  Module<dynamic>? findByName(String initialModuleName) {
    return _modules[initialModuleName];
  }

  /// Aggregates all localization delegates from registered modules.
  // List<LocalizationsDelegate<dynamic>> allLocalizationDelegates() {

  // }

  /// Aggregates all route redirection flags from registered modules.
  Map<String, String> allRouteRedirectionFlags() {
    return Map.fromEntries(_modules.values.expand((module) => module.getRouteRedirectionFlags().entries));
  }

  /// Clears all registered modules (for testing or reset).
  void clearModules() {
    _modules.clear();
  }

  /// Returns the number of registered modules.
  int get moduleCount => _modules.length;
}
