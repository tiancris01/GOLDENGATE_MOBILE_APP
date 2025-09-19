// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_navigation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authRoute)
const authRouteProvider = AuthRouteProvider._();

final class AuthRouteProvider
    extends $FunctionalProvider<List<GoRoute>, List<GoRoute>, List<GoRoute>>
    with $Provider<List<GoRoute>> {
  const AuthRouteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRouteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRouteHash();

  @$internal
  @override
  $ProviderElement<List<GoRoute>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<GoRoute> create(Ref ref) {
    return authRoute(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<GoRoute> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<GoRoute>>(value),
    );
  }
}

String _$authRouteHash() => r'911822aafa5e552a1008db2bdb1573be94ea0f7f';
