import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/auth_repository.dart';
import '../repository/handle_exception/handle_exception.dart';

part 'auth_remote_data_sourece.g.dart';

@riverpod
FirebaseAuth firebaseAuth(Ref ref) {
  return FirebaseAuth.instance;
}

@riverpod
CollectionReference<Map<String, dynamic>> firestore(Ref ref) {
  return FirebaseFirestore.instance.collection('users');
}

class AuthRemoteDataSource implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final CollectionReference<Map<String, dynamic>> _firestore;

  AuthRemoteDataSource([
    FirebaseAuth? firebaseAuth,
    CollectionReference<Map<String, dynamic>>? firestore,
  ]) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
       _firestore = firestore ?? FirebaseFirestore.instance.collection('users');

  @override
  Future<void> changePassword(String password) async {
    try {
      await currentUser?.updatePassword(password);
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> reauthenticateWithCredential(String email, String password) async {
    try {
      final credential = EmailAuthProvider.credential(email: email, password: password);
      await currentUser?.reauthenticateWithCredential(credential);
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> reloadUser() async {
    try {
      await currentUser?.reload();
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      await currentUser?.sendEmailVerification();
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? signedInUser = userCredential.user;
      if (signedInUser != null) {
        _firestore.doc(signedInUser.uid).set({
          'name': name,
          'email': email,
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  User? get currentUser => _firebaseAuth.currentUser;
}
