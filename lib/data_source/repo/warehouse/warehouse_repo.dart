import 'package:exam_app_itasoft/model/adjustment/adjust_stock_item.dart';
import 'package:exam_app_itasoft/model/base/base_list.dart';
import 'package:exam_app_itasoft/model/data_result/data_result.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item_detail.dart';
import 'package:exam_app_itasoft/model/warehouse/warehouse.dart';

abstract class WarehouseRepo {
  Future<DataResult<Warehouse>> getWarehouseCode();

  Future<DataResult<BaseList<StockItem>>> getStockItem({int page = 1, int limit = 10});

  Future<DataResult<BaseList<AdjustStockItem>>> getAdjustStockItem({int page = 1, int limit = 10});

  Future<DataResult<StockItemDetail>> getStockItemDetail({required String id});

  Future<DataResult<bool>> requestItem (Map<String, dynamic> json);
}
