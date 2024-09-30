// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      username: json['username'] as String,
      token: json['token'] as String,
      isAdmin: json['isAdmin'] as bool,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'token': instance.token,
      'isAdmin': instance.isAdmin,
    };
