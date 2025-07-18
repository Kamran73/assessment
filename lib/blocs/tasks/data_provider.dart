part of 'task_bloc.dart';

class _DataProvider {
  _DataProvider._();

  static final _auth = FirebaseAuth.instance;
  static final _tasks = FirebaseFirestore.instance.collection('tasks');

  static Future<Task> addTask({required Map<String, dynamic> payload}) async {
    try {
      final uid = _auth.currentUser?.uid;
      if (uid == null) throw Exception('User not logged in');

      final newDoc = _tasks.doc();

      final taskWithMeta = {
        ...payload,
        'id': newDoc.id,
        'uid': uid,
        'isDone': false,
        'createdAt': Timestamp.now(),
      };

      await newDoc.set(taskWithMeta);

      return Task.fromJson(taskWithMeta);
    } on FirebaseException catch (ex, st) {
      throw FirestoreFailure.fromFirebaseFirestore(ex, st);
    } catch (ex, st) {
      throw UnknownFailure.exception(ex, st);
    }
  }

  static Future<List<Task>> fetchTasks() async {
    try {
      final uid = _auth.currentUser?.uid;
      if (uid == null) throw Exception('User not logged in');

      final querySnapshot =
          await _tasks
              .where('uid', isEqualTo: uid)
              .orderBy('createdAt', descending: true)
              .get();

      return querySnapshot.docs
          .map((doc) => Task.fromJson(doc.data()))
          .toList();
    } on FirebaseException catch (ex, st) {
      throw FirestoreFailure.fromFirebaseFirestore(ex, st);
    } catch (ex, st) {
      throw UnknownFailure.exception(ex, st);
    }
  }

  static Future<void> deleteTaskById(String taskId) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).delete();
    } on FirebaseException catch (e, st) {
      throw FirestoreFailure.fromFirebaseFirestore(e, st);
    } catch (e, st) {
      throw UnknownFailure.exception(e, st);
    }
  }

  static Future<void> updateTask({
    required Map<String, dynamic> payload,
  }) async {
    try {
      final id = payload['id'];

      await _tasks.doc(id).update(payload);
    } on FirebaseException catch (e, st) {
      throw FirestoreFailure.fromFirebaseFirestore(e, st);
    } catch (e, st) {
      throw UnknownFailure.exception(e, st);
    }
  }
}
