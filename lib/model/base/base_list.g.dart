// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseListImpl<T> _$$BaseListImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseListImpl<T>(
      total: (json['total'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$BaseListImplToJson<T>(
  _$BaseListImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'size': instance.size,
      'data': instance.data.map(toJsonT).toList(),
    };
