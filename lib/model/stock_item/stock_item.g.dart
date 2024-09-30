// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockItemImpl _$$StockItemImplFromJson(Map<String, dynamic> json) =>
    _$StockItemImpl(
      id: json['id'] as String,
      image: json['c_image'] as String,
      expired: json['c_expired'] as String,
      warehouse: json['c_gudang'] as String,
      stock: json['c_stok'] as String,
      category: json['c_kategori'] as String,
      name: json['c_nama_barang'] as String,
    );

Map<String, dynamic> _$$StockItemImplToJson(_$StockItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'c_image': instance.image,
      'c_expired': instance.expired,
      'c_gudang': instance.warehouse,
      'c_stok': instance.stock,
      'c_kategori': instance.category,
      'c_nama_barang': instance.name,
    };
