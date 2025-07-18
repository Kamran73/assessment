import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String id,
    required String uid,
    required String title,
    String? description,
    @Default(false) bool isDone,
    @TimestampConverter() required Timestamp createdAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}


class TimestampConverter implements JsonConverter<Timestamp, Object> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object json) {
    if (json is Timestamp) return json;
    if (json is Map<String, dynamic> && json.containsKey('_seconds')) {
      return Timestamp(json['_seconds'], json['_nanoseconds']);
    }
    throw FormatException('Cannot convert $json to Timestamp');
  }

  @override
  Object toJson(Timestamp object) => object;
}
