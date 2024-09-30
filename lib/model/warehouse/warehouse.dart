
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  factory Warehouse({
    @JsonKey(name: "user_name") required String username,
    @JsonKey(name: "kode_gudang") required String code,
  }) = _Warehouse;
	
  factory Warehouse.fromJson(Map<String, dynamic> json) =>
			_$WarehouseFromJson(json);
}
