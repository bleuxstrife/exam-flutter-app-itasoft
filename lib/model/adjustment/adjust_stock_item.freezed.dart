// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjust_stock_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdjustStockItem _$AdjustStockItemFromJson(Map<String, dynamic> json) {
  return _AdjustStockItem.fromJson(json);
}

/// @nodoc
mixin _$AdjustStockItem {
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "exipred")
  String get expired => throw _privateConstructorUsedError;
  @JsonKey(name: "gudang")
  String get warehouse => throw _privateConstructorUsedError;
  @JsonKey(name: "stok")
  String get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "kategori")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "nama_barang")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AdjustStockItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdjustStockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdjustStockItemCopyWith<AdjustStockItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustStockItemCopyWith<$Res> {
  factory $AdjustStockItemCopyWith(
          AdjustStockItem value, $Res Function(AdjustStockItem) then) =
      _$AdjustStockItemCopyWithImpl<$Res, AdjustStockItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "image") String image,
      @JsonKey(name: "exipred") String expired,
      @JsonKey(name: "gudang") String warehouse,
      @JsonKey(name: "stok") String stock,
      @JsonKey(name: "kategori") String category,
      @JsonKey(name: "nama_barang") String name});
}

/// @nodoc
class _$AdjustStockItemCopyWithImpl<$Res, $Val extends AdjustStockItem>
    implements $AdjustStockItemCopyWith<$Res> {
  _$AdjustStockItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdjustStockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? expired = null,
    Object? warehouse = null,
    Object? stock = null,
    Object? category = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$AdjustStockItemImplCopyWith<$Res>
    implements $AdjustStockItemCopyWith<$Res> {
  factory _$$AdjustStockItemImplCopyWith(_$AdjustStockItemImpl value,
          $Res Function(_$AdjustStockItemImpl) then) =
      __$$AdjustStockItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "image") String image,
      @JsonKey(name: "exipred") String expired,
      @JsonKey(name: "gudang") String warehouse,
      @JsonKey(name: "stok") String stock,
      @JsonKey(name: "kategori") String category,
      @JsonKey(name: "nama_barang") String name});
}

/// @nodoc
class __$$AdjustStockItemImplCopyWithImpl<$Res>
    extends _$AdjustStockItemCopyWithImpl<$Res, _$AdjustStockItemImpl>
    implements _$$AdjustStockItemImplCopyWith<$Res> {
  __$$AdjustStockItemImplCopyWithImpl(
      _$AdjustStockItemImpl _value, $Res Function(_$AdjustStockItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdjustStockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? expired = null,
    Object? warehouse = null,
    Object? stock = null,
    Object? category = null,
    Object? name = null,
  }) {
    return _then(_$AdjustStockItemImpl(
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
class _$AdjustStockItemImpl implements _AdjustStockItem {
  _$AdjustStockItemImpl(
      {@JsonKey(name: "image") required this.image,
      @JsonKey(name: "exipred") required this.expired,
      @JsonKey(name: "gudang") required this.warehouse,
      @JsonKey(name: "stok") required this.stock,
      @JsonKey(name: "kategori") required this.category,
      @JsonKey(name: "nama_barang") required this.name});

  factory _$AdjustStockItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdjustStockItemImplFromJson(json);

  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "exipred")
  final String expired;
  @override
  @JsonKey(name: "gudang")
  final String warehouse;
  @override
  @JsonKey(name: "stok")
  final String stock;
  @override
  @JsonKey(name: "kategori")
  final String category;
  @override
  @JsonKey(name: "nama_barang")
  final String name;

  @override
  String toString() {
    return 'AdjustStockItem(image: $image, expired: $expired, warehouse: $warehouse, stock: $stock, category: $category, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdjustStockItemImpl &&
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
      runtimeType, image, expired, warehouse, stock, category, name);

  /// Create a copy of AdjustStockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdjustStockItemImplCopyWith<_$AdjustStockItemImpl> get copyWith =>
      __$$AdjustStockItemImplCopyWithImpl<_$AdjustStockItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdjustStockItemImplToJson(
      this,
    );
  }
}

abstract class _AdjustStockItem implements AdjustStockItem {
  factory _AdjustStockItem(
          {@JsonKey(name: "image") required final String image,
          @JsonKey(name: "exipred") required final String expired,
          @JsonKey(name: "gudang") required final String warehouse,
          @JsonKey(name: "stok") required final String stock,
          @JsonKey(name: "kategori") required final String category,
          @JsonKey(name: "nama_barang") required final String name}) =
      _$AdjustStockItemImpl;

  factory _AdjustStockItem.fromJson(Map<String, dynamic> json) =
      _$AdjustStockItemImpl.fromJson;

  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "exipred")
  String get expired;
  @override
  @JsonKey(name: "gudang")
  String get warehouse;
  @override
  @JsonKey(name: "stok")
  String get stock;
  @override
  @JsonKey(name: "kategori")
  String get category;
  @override
  @JsonKey(name: "nama_barang")
  String get name;

  /// Create a copy of AdjustStockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdjustStockItemImplCopyWith<_$AdjustStockItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
