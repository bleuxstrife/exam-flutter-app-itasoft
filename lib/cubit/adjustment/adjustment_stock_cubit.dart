import 'package:exam_app_itasoft/cubit/base/base_cubit.dart';
import 'package:exam_app_itasoft/model/stock_item/stock_item_detail.dart';
import 'package:exam_app_itasoft/state/general_state/general_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data_source/repo/warehouse/warehouse_repo.dart';

class AdjustmentStockCubit extends BaseCubit {
  late final WarehouseRepo _repo;
  AdjustmentStockCubit(this._repo) : super(const Idle());

  requestItem(BuildContext context, StockItemDetail item) {
    showELoading();
    _repo.requestItem(item.toJson()).then((res) => res.when(
        success: (_) {
          hideELoadingWithMsg(isSuccess: true, message: "Sukses Request Barang");
          context.pop();
        },
        failure: (eM) =>
            hideELoadingWithMsg(message: eM ?? "Error")));
  }
}
