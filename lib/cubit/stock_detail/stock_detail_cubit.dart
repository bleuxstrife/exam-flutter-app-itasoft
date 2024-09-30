import 'package:exam_app_itasoft/cubit/base/base_cubit.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item_detail.dart';
import 'package:exam_app_itasoft/state/general_state/general_state.dart';
import 'package:exam_app_itasoft/utils/datetime_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data_source/repo/warehouse/warehouse_repo.dart';

class StockDetailCubit extends BaseCubit {
  late final WarehouseRepo _repo;
  StockDetailCubit(this._repo) : super(const Idle());

  getDetail(BuildContext context, String id) {
    showELoading();
    _repo.getStockItemDetail(id: id).then((res) => res.when(
        success: (data) {
          hideELoading();
          _toDetail(context, data);
        },
        failure: (eM) =>
            hideELoadingWithMsg(isSuccess: false, message: eM ?? "Error")));
  }

  _toDetail(BuildContext context, StockItemDetail item) {
    String route = "/home/item-detail";
    bool needToAdjustment = _needToAdjustment(item);
    if (needToAdjustment) {
      route = "/home/adjustment-stock";
    }
    context.go(route, extra: item);
  }

  bool _needToAdjustment(StockItemDetail item) {
    bool isExpired = DatetimeHelper.isExpire(item.expired);
    bool isStockSafe =
        (int.tryParse(item.stock) ?? 0) < (int.tryParse(item.safetyStock) ?? 0);

    return isExpired || isStockSafe;
  }
}
