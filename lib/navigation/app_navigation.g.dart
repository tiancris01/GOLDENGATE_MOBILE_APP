// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_navigation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appRoute)
const appRouteProvider = AppRouteProvider._();

final class AppRouteProvider
    extends $FunctionalProvider<List<GoRoute>, List<GoRoute>, List<GoRoute>>
    with $Provider<List<GoRoute>> {
  const AppRouteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouteHash();

  @$internal
  @override
  $ProviderElement<List<GoRoute>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<GoRoute> create(Ref ref) {
    return appRoute(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<GoRoute> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<GoRoute>>(value),
    );
  }
}

String _$appRouteHash() => r'a6e597f9bbda340194f4f4f857cf063fae20b41f';
