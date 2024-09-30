import 'package:freezed_annotation/freezed_annotation.dart';

part 'adjust_stock_item.freezed.dart';
part 'adjust_stock_item.g.dart';

@freezed
class AdjustStockItem with _$AdjustStockItem {
  factory AdjustStockItem({
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "exipred") required String expired,
    @JsonKey(name: "gudang") required String warehouse,
    @JsonKey(name: "stok") required String stock,
    @JsonKey(name: "kategori") required String category,
    @JsonKey(name: "nama_barang") required String name,
  }) = _AdjustStockItem;

  factory AdjustStockItem.fromJson(Map<String, dynamic> json) =>
      _$AdjustStockItemFromJson(json);
}
