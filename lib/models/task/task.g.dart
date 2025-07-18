// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Task _$TaskFromJson(Map<String, dynamic> json) => _Task(
  id: json['id'] as String,
  uid: json['uid'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  isDone: json['isDone'] as bool? ?? false,
  createdAt: const TimestampConverter().fromJson(json['createdAt'] as Object),
);

Map<String, dynamic> _$TaskToJson(_Task instance) => <String, dynamic>{
  'id': instance.id,
  'uid': instance.uid,
  'title': instance.title,
  'description': instance.description,
  'isDone': instance.isDone,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};
