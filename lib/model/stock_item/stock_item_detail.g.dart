// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_item_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockItemDetailImpl _$$StockItemDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$StockItemDetailImpl(
      createdByName: json['createdByName'] as String,
      image: json['image'] as String,
      safetyStock: json['safety_stok'] as String,
      warehouse: json['gudang'] as String,
      dateModified: json['dateModified'] as String,
      category: json['kategori'] as String,
      stock: json['stok'] as String,
      modifiedByName: json['modifiedByName'] as String,
      dateCreated: json['dateCreated'] as String,
      expired: json['expired'] as String,
      createdBy: json['createdBy'] as String,
      modifiedBy: json['modifiedBy'] as String,
      name: json['nama_barang'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$StockItemDetailImplToJson(
        _$StockItemDetailImpl instance) =>
    <String, dynamic>{
      'createdByName': instance.createdByName,
      'image': instance.image,
      'safety_stok': instance.safetyStock,
      'gudang': instance.warehouse,
      'dateModified': instance.dateModified,
      'kategori': instance.category,
      'stok': instance.stock,
      'modifiedByName': instance.modifiedByName,
      'dateCreated': instance.dateCreated,
      'expired': instance.expired,
      'createdBy': instance.createdBy,
      'modifiedBy': instance.modifiedBy,
      'nama_barang': instance.name,
      'id': instance.id,
    };
