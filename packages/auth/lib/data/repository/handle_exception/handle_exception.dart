import 'package:firebase_auth/firebase_auth.dart';

import '../model/custom_error.dart';

CustomError handleException(Object e) {
  try {
    throw e;
  } on FirebaseAuthException catch (e) {
    throw CustomError(
      code: e.code,
      message: e.message ?? 'Invalid credentials provided.',
    );
  } on FirebaseException catch (e) {
    throw CustomError(code: e.code, message: e.message ?? 'Firebase Error.');
  } catch (e) {
    throw CustomError(code: 'unknown', message: e.toString());
  }
}
