import 'package:flutter_test/flutter_test.dart';

import 'package:auth/auth.dart';

void main() {
  group('AuthService', () {
    final authService = AuthService();

    test('signInWithEmail returns true for stub', () async {
      final result = await authService.signInWithEmail(
        'test@example.com',
        'password',
      );
      expect(result, isTrue);
    });

    test('signOut completes', () async {
      await authService.signOut();
      expect(true, isTrue); // Just checks completion for now
    });
  });
}
