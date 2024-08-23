// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: (json['id'] as num).toInt(),
      role: (json['role'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      username: json['username'] as String,
      currentTitle: json['current_title'] as String,
      imageProfile: json['image_profile'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'name': instance.name,
      'username': instance.username,
      'current_title': instance.currentTitle,
      'image_profile': instance.imageProfile,
    };
