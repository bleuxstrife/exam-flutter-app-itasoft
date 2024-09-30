import 'package:exam_app_itasoft/data_source/client/api_service.dart';
import 'package:exam_app_itasoft/data_source/repo/warehouse/warehouse_repo.dart';
import 'package:exam_app_itasoft/model/adjustment/adjust_stock_item.dart';
import 'package:exam_app_itasoft/model/base/base_list.dart';
import 'package:exam_app_itasoft/model/data_result/data_result.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item_detail.dart';
import 'package:exam_app_itasoft/model/warehouse/warehouse.dart';
import 'package:exam_app_itasoft/utils/storage_helper.dart';

import '../../../model/network_exception/network_exception.dart';

class WarehouseRepoImpl extends WarehouseRepo {
  late ApiService _apiService;

  WarehouseRepoImpl() {
    _apiService = ApiService.instance;
  }
  @override
  Future<DataResult<Warehouse>> getWarehouseCode() async {
    try {
      final response = await _apiService.get("/list/list_frmUserMapping",
          queryParameters: {"user_name": "cat"});
      var data = response["data"];
      return DataResult.success(data: Warehouse.fromJson(data[0]));
    } catch (e) {
      return DataResult.failure(
          errorMsg: NetworkException.getDioExceptionMessage(e));
    }
  }

  @override
  Future<DataResult<BaseList<StockItem>>> getStockItem(
      {int page = 1, int limit = 10}) async {
    try {
      final response =
          await _apiService.get("/list/list_formStokBarang", queryParameters: {
        "pageSize": limit,
        "startOffset": page,
        "c_gudang": StorageHelper.getWarehouseCode
      });
      var data = response;
      return DataResult.success(
          data: BaseList<StockItem>.fromJson(data,
              (json) => StockItem.fromJson(json as Map<String, dynamic>)));
    } catch (e) {
      return DataResult.failure(
          errorMsg: NetworkException.getDioExceptionMessage(e));
    }
  }

  @override
  Future<DataResult<BaseList<AdjustStockItem>>> getAdjustStockItem(
      {int page = 1, int limit = 10}) async {
    try {
      final response =
          await _apiService.get("/list/listAdjustmentStok", queryParameters: {
        "pageSize": limit,
        "startOffset": page,
        "c_gudang": StorageHelper.getWarehouseCode
      });
      var data = response;
      return DataResult.success(
          data: BaseList<AdjustStockItem>.fromJson(
              data,
              (json) =>
                  AdjustStockItem.fromJson(json as Map<String, dynamic>)));
    } catch (e) {
      return DataResult.failure(
          errorMsg: NetworkException.getDioExceptionMessage(e));
    }
  }

  @override
  Future<DataResult<StockItemDetail>> getStockItemDetail(
      {required String id}) async {
    try {
      final response = await _apiService.get("/form/formStokBarang/$id");
      var data = response;
      return DataResult.success(data: StockItemDetail.fromJson(data));
    } catch (e) {
      return DataResult.failure(
          errorMsg: NetworkException.getDioExceptionMessage(e));
    }
  }

  @override
  Future<DataResult<bool>> requestItem(Map<String, dynamic> json) async {
    try {
      await _apiService.post("/form/adjustmentStok",
          data: json, contentType: ContentType.json);
      return const DataResult.success(data: true);
    } catch (e) {
      return DataResult.failure(
          errorMsg: NetworkException.getDioExceptionMessage(e));
    }
  }
}
