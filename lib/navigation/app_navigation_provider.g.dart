// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_navigation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appRouter)
const appRouterProvider = AppRouterFamily._();

final class AppRouterProvider extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  const AppRouterProvider._({
    required AppRouterFamily super.from,
    required ModuleManager super.argument,
  }) : super(
         retry: null,
         name: r'appRouterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @override
  String toString() {
    return r'appRouterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    final argument = this.argument as ModuleManager;
    return appRouter(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppRouterProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appRouterHash() => r'080a5c5ed449e4aac6e3510ac175de68dbeca995';

final class AppRouterFamily extends $Family
    with $FunctionalFamilyOverride<GoRouter, ModuleManager> {
  const AppRouterFamily._()
    : super(
        retry: null,
        name: r'appRouterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AppRouterProvider call(ModuleManager moduleManager) =>
      AppRouterProvider._(argument: moduleManager, from: this);

  @override
  String toString() => r'appRouterProvider';
}
