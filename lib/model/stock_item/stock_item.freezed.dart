// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockItem _$StockItemFromJson(Map<String, dynamic> json) {
  return _StockItem.fromJson(json);
}

/// @nodoc
mixin _$StockItem {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "c_image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "c_expired")
  String get expired => throw _privateConstructorUsedError;
  @JsonKey(name: "c_gudang")
  String get warehouse => throw _privateConstructorUsedError;
  @JsonKey(name: "c_stok")
  String get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "c_kategori")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "c_nama_barang")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StockItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockItemCopyWith<StockItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockItemCopyWith<$Res> {
  factory $StockItemCopyWith(StockItem value, $Res Function(StockItem) then) =
      _$StockItemCopyWithImpl<$Res, StockItem>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "c_image") String image,
      @JsonKey(name: "c_expired") String expired,
      @JsonKey(name: "c_gudang") String warehouse,
      @JsonKey(name: "c_stok") String stock,
      @JsonKey(name: "c_kategori") String category,
      @JsonKey(name: "c_nama_barang") String name});
}

/// @nodoc
class _$StockItemCopyWithImpl<$Res, $Val extends StockItem>
    implements $StockItemCopyWith<$Res> {
  _$StockItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? expired = null,
    Object? warehouse = null,
    Object? stock = null,
    Object? category = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      expired: null == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockItemImplCopyWith<$Res>
    implements $StockItemCopyWith<$Res> {
  factory _$$StockItemImplCopyWith(
          _$StockItemImpl value, $Res Function(_$StockItemImpl) then) =
      __$$StockItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "c_image") String image,
      @JsonKey(name: "c_expired") String expired,
      @JsonKey(name: "c_gudang") String warehouse,
      @JsonKey(name: "c_stok") String stock,
      @JsonKey(name: "c_kategori") String category,
      @JsonKey(name: "c_nama_barang") String name});
}

/// @nodoc
class __$$StockItemImplCopyWithImpl<$Res>
    extends _$StockItemCopyWithImpl<$Res, _$StockItemImpl>
    implements _$$StockItemImplCopyWith<$Res> {
  __$$StockItemImplCopyWithImpl(
      _$StockItemImpl _value, $Res Function(_$StockItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? expired = null,
    Object? warehouse = null,
    Object? stock = null,
    Object? category = null,
    Object? name = null,
  }) {
    return _then(_$StockItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      expired: null == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockItemImpl implements _StockItem {
  _$StockItemImpl(
      {required this.id,
      @JsonKey(name: "c_image") required this.image,
      @JsonKey(name: "c_expired") required this.expired,
      @JsonKey(name: "c_gudang") required this.warehouse,
      @JsonKey(name: "c_stok") required this.stock,
      @JsonKey(name: "c_kategori") required this.category,
      @JsonKey(name: "c_nama_barang") required this.name});

  factory _$StockItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockItemImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "c_image")
  final String image;
  @override
  @JsonKey(name: "c_expired")
  final String expired;
  @override
  @JsonKey(name: "c_gudang")
  final String warehouse;
  @override
  @JsonKey(name: "c_stok")
  final String stock;
  @override
  @JsonKey(name: "c_kategori")
  final String category;
  @override
  @JsonKey(name: "c_nama_barang")
  final String name;

  @override
  String toString() {
    return 'StockItem(id: $id, image: $image, expired: $expired, warehouse: $warehouse, stock: $stock, category: $category, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.expired, expired) || other.expired == expired) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, image, expired, warehouse, stock, category, name);

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockItemImplCopyWith<_$StockItemImpl> get copyWith =>
      __$$StockItemImplCopyWithImpl<_$StockItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockItemImplToJson(
      this,
    );
  }
}

abstract class _StockItem implements StockItem {
  factory _StockItem(
          {required final String id,
          @JsonKey(name: "c_image") required final String image,
          @JsonKey(name: "c_expired") required final String expired,
          @JsonKey(name: "c_gudang") required final String warehouse,
          @JsonKey(name: "c_stok") required final String stock,
          @JsonKey(name: "c_kategori") required final String category,
          @JsonKey(name: "c_nama_barang") required final String name}) =
      _$StockItemImpl;

  factory _StockItem.fromJson(Map<String, dynamic> json) =
      _$StockItemImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "c_image")
  String get image;
  @override
  @JsonKey(name: "c_expired")
  String get expired;
  @override
  @JsonKey(name: "c_gudang")
  String get warehouse;
  @override
  @JsonKey(name: "c_stok")
  String get stock;
  @override
  @JsonKey(name: "c_kategori")
  String get category;
  @override
  @JsonKey(name: "c_nama_barang")
  String get name;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockItemImplCopyWith<_$StockItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
