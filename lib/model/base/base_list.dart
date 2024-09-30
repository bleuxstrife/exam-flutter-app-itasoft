import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_list.freezed.dart';
part 'base_list.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseList<T> with _$BaseList<T> {
  factory BaseList({
    required int total,
    required int size,
    required List<T> data,
  }) = _BaseList<T>;

  factory BaseList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseListFromJson(json, fromJsonT);
}
