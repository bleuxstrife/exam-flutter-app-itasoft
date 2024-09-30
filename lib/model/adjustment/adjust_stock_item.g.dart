// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjust_stock_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdjustStockItemImpl _$$AdjustStockItemImplFromJson(
        Map<String, dynamic> json) =>
    _$AdjustStockItemImpl(
      image: json['image'] as String,
      expired: json['exipred'] as String,
      warehouse: json['gudang'] as String,
      stock: json['stok'] as String,
      category: json['kategori'] as String,
      name: json['nama_barang'] as String,
    );

Map<String, dynamic> _$$AdjustStockItemImplToJson(
        _$AdjustStockItemImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'exipred': instance.expired,
      'gudang': instance.warehouse,
      'stok': instance.stock,
      'kategori': instance.category,
      'nama_barang': instance.name,
    };
