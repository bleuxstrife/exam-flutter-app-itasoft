
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_item.freezed.dart';
part 'stock_item.g.dart';

@freezed
class StockItem with _$StockItem {
  factory StockItem({
    required String id,
    @JsonKey(name: "c_image") required String image,
    @JsonKey(name: "c_expired") required String expired,
    @JsonKey(name: "c_gudang") required String warehouse,
    @JsonKey(name: "c_stok") required String stock,
    @JsonKey(name: "c_kategori") required String category,
    @JsonKey(name: "c_nama_barang") required String name,
  }) = _StockItem;
	
  factory StockItem.fromJson(Map<String, dynamic> json) =>
			_$StockItemFromJson(json);
}
