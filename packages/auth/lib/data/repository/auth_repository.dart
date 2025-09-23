import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data_source/auth_remote_data_sourece.dart';

part 'auth_repository.g.dart';

abstract interface class AuthRepository {
  User? get currentUser;
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  });
  Future<void> signIn(String email, String password);
  Future<void> sendEmailVerification();
  Future<void> changePassword(String password);
  Future<void> sendPasswordResetEmail(String email);
  Future<void> reloadUser();
  Future<void> signInWithGoogle();
  Future<void> reauthenticateWithCredential(String email, String password);
  Future<void> signOut();
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRemoteDataSource();
}

@riverpod
Stream<User?> authState(Ref ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
}
