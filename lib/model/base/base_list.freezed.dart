// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseList<T> _$BaseListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseList<T> {
  int get total => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseList to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseListCopyWith<T, BaseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListCopyWith<T, $Res> {
  factory $BaseListCopyWith(
          BaseList<T> value, $Res Function(BaseList<T>) then) =
      _$BaseListCopyWithImpl<T, $Res, BaseList<T>>;
  @useResult
  $Res call({int total, int size, List<T> data});
}

/// @nodoc
class _$BaseListCopyWithImpl<T, $Res, $Val extends BaseList<T>>
    implements $BaseListCopyWith<T, $Res> {
  _$BaseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseListImplCopyWith<T, $Res>
    implements $BaseListCopyWith<T, $Res> {
  factory _$$BaseListImplCopyWith(
          _$BaseListImpl<T> value, $Res Function(_$BaseListImpl<T>) then) =
      __$$BaseListImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int total, int size, List<T> data});
}

/// @nodoc
class __$$BaseListImplCopyWithImpl<T, $Res>
    extends _$BaseListCopyWithImpl<T, $Res, _$BaseListImpl<T>>
    implements _$$BaseListImplCopyWith<T, $Res> {
  __$$BaseListImplCopyWithImpl(
      _$BaseListImpl<T> _value, $Res Function(_$BaseListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_$BaseListImpl<T>(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseListImpl<T> implements _BaseList<T> {
  _$BaseListImpl(
      {required this.total, required this.size, required final List<T> data})
      : _data = data;

  factory _$BaseListImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseListImplFromJson(json, fromJsonT);

  @override
  final int total;
  @override
  final int size;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseList<$T>(total: $total, size: $size, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseListImpl<T> &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, size, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListImplCopyWith<T, _$BaseListImpl<T>> get copyWith =>
      __$$BaseListImplCopyWithImpl<T, _$BaseListImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseListImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseList<T> implements BaseList<T> {
  factory _BaseList(
      {required final int total,
      required final int size,
      required final List<T> data}) = _$BaseListImpl<T>;

  factory _BaseList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseListImpl<T>.fromJson;

  @override
  int get total;
  @override
  int get size;
  @override
  List<T> get data;

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseListImplCopyWith<T, _$BaseListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
