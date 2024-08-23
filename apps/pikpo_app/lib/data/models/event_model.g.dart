// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      duration: json['duration'] as num,
      multipleSession: json['multiple_session'] as bool?,
      price: json['price'] as num,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'type': instance.type,
      'description': instance.description,
      'duration': instance.duration,
      'multiple_session': instance.multipleSession,
      'price': instance.price,
    };
