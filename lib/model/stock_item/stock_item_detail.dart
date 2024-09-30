import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_item_detail.freezed.dart';
part 'stock_item_detail.g.dart';

@freezed
class StockItemDetail with _$StockItemDetail {
  factory StockItemDetail({
    @JsonKey(name: "createdByName") required String createdByName,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "safety_stok") required String safetyStock,
    @JsonKey(name: "gudang") required String warehouse,
    @JsonKey(name: "dateModified") required String dateModified,
    @JsonKey(name: "kategori") required String category,
    @JsonKey(name: "stok") required String stock,
    @JsonKey(name: "modifiedByName") required String modifiedByName,
    @JsonKey(name: "dateCreated") required String dateCreated,
    @JsonKey(name: "expired") required String expired,
    @JsonKey(name: "createdBy") required String createdBy,
    @JsonKey(name: "modifiedBy") required String modifiedBy,
    @JsonKey(name: "nama_barang") required String name,
    @JsonKey(name: "id") required String id,
  }) = _StockItemDetail;

  factory StockItemDetail.fromJson(Map<String, dynamic> json) =>
      _$StockItemDetailFromJson(json);
}
