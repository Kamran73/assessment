import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errorMessage;
  final StackTrace stackTrace;
  final int? statusCode;

  const Failure(this.errorMessage, this.stackTrace, {this.statusCode});

  String get msg => errorMessage;
}

class AuthFailure extends Failure {
  AuthFailure._(super.errorMessage, super.stackStrace);

  factory AuthFailure.fromFirebaseAuth(
    FirebaseAuthException ex,
    StackTrace stackTrace,
  ) {
    return switch (ex.code) {
      'network-request-failed' => AuthFailure._(
        'Network request failed, Please check your internet.',
        stackTrace,
      ),
      'email-already-in-use' ||
      'ERROR_EMAIL_ALREADY_IN_USE' ||
      'account-exists-with-different-credential' => AuthFailure._(
        'Email already used. Go to login page.',
        stackTrace,
      ),
      'wrong-password' || 'invalid-credential' || 'ERROR_WRONG_PASSWORD' =>
        AuthFailure._('Wrong email/password combination.', stackTrace),
      'user-not-found' || 'ERROR_USER_NOT_FOUND' => AuthFailure._(
        'No user found with this email.',
        stackTrace,
      ),
      'user-disabled' ||
      'ERROR_USER_DISABLED' => AuthFailure._('User disabled.', stackTrace),
      'too-many-requests' || 'ERROR_TOO_MANY_REQUESTS' => AuthFailure._(
        'Too many requests to log into this account.',
        stackTrace,
      ),
      'operation-not-allowed' || 'ERROR_OPERATION_NOT_ALLOWED' => AuthFailure._(
        'Server error, please try again later.',
        stackTrace,
      ),
      'invalid-email' || 'ERROR_INVALID_EMAIL' => AuthFailure._(
        'Email address is invalid.',
        stackTrace,
      ),
      _ => AuthFailure._(
        ex.message ?? 'Authentication failed, try again!',
        stackTrace,
      ),
    };
  }
}

class FirestoreFailure extends Failure {
  FirestoreFailure._(super.errorMessage, super.stackTrace);

  factory FirestoreFailure.fromFirebaseFirestore(
    FirebaseException ex,
    StackTrace stackTrace,
  ) {
    return switch (ex.code) {
      'permission-denied' => FirestoreFailure._(
        'You don\'t have permission to perform this action.',
        stackTrace,
      ),
      'unavailable' => FirestoreFailure._(
        'Firestore service is currently unavailable. Please try again later.',
        stackTrace,
      ),
      'not-found' => FirestoreFailure._(
        'Requested document was not found.',
        stackTrace,
      ),
      'aborted' => FirestoreFailure._(
        'The operation was aborted. Please try again.',
        stackTrace,
      ),
      'already-exists' => FirestoreFailure._(
        'The document already exists.',
        stackTrace,
      ),
      'cancelled' => FirestoreFailure._(
        'The operation was cancelled.',
        stackTrace,
      ),
      'data-loss' => FirestoreFailure._(
        'Unrecoverable data loss or corruption.',
        stackTrace,
      ),
      'deadline-exceeded' => FirestoreFailure._(
        'Deadline exceeded. Try again later.',
        stackTrace,
      ),
      'resource-exhausted' => FirestoreFailure._(
        'Quota exceeded. Try again tomorrow or contact support.',
        stackTrace,
      ),
      'failed-precondition' => FirestoreFailure._(
        'Operation rejected due to failed precondition.',
        stackTrace,
      ),
      'internal' => FirestoreFailure._(
        'Internal server error. Try again later.',
        stackTrace,
      ),
      'invalid-argument' => FirestoreFailure._(
        'Invalid argument passed to Firestore.',
        stackTrace,
      ),
      'unimplemented' => FirestoreFailure._(
        'This operation is not implemented.',
        stackTrace,
      ),
      'unauthenticated' => FirestoreFailure._(
        'You must be authenticated to perform this action.',
        stackTrace,
      ),
      _ => FirestoreFailure._(
        ex.message ?? 'Firestore error occurred. Try again.',
        stackTrace,
      ),
    };
  }
}

class UnknownFailure extends Failure {
  UnknownFailure._(super.errorMessage, super.stackTrace);

  factory UnknownFailure.exception(Object ex, StackTrace st) =>
      UnknownFailure._('Something went wrong', st);
}

class HttpFailure extends Failure {
  HttpFailure._(super.errorMessage, super.stackTrace, int? statusCode)
    : super(statusCode: statusCode);

  factory HttpFailure.fromDioException(DioException ex, StackTrace stackTrace) {
    final errorMessage = ex.response?.data['error'] ?? 'Unknown error';
    final statusCode = ex.response?.statusCode;
    return HttpFailure._(errorMessage, stackTrace, statusCode);
  }
}
