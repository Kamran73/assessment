part of 'auth_bloc.dart';

class _DataProvider {
  _DataProvider._();

  static final _auth = FirebaseAuth.instance;

  static Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (ex, st) {
      throw AuthFailure.fromFirebaseAuth(ex, st);
    } catch (ex, st) {
      throw UnknownFailure.exception(ex, st);
    }
  }

  static Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex, st) {
      throw AuthFailure.fromFirebaseAuth(ex, st);
    } catch (ex, st) {
      throw UnknownFailure.exception(ex, st);
    }
  }

  static Future<void> logout() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (ex, st) {
      throw AuthFailure.fromFirebaseAuth(ex, st);
    } catch (ex, st) {
      throw UnknownFailure.exception(ex, st);
    }
  }
}
