import 'package:exam_app_itasoft/model/adjustment/adjust_stock_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant/constant.dart';
import '../../data_source/repo/warehouse/warehouse_repo.dart';
import '../../state/result_state/result_state.dart';

class AdjustmentCubit extends Cubit<ResultState<List<AdjustStockItem>>> {
  late final WarehouseRepo _repo;
  AdjustmentCubit(this._repo) : super(const Idle());
  String _search = "";
  String _sort = Constant.itemName;

  List<AdjustStockItem> _sourceData = [], _tempData = [];

  init() {
    _getStockItem();
  }

  _getStockItem() {
    emit(const Loading());
    _repo.getAdjustStockItem().then((value) => value.when(
        success: (data) {
          _sourceData = data.data;
          filter();
          emit(Data(data: _tempData));
        },
        failure: (eM) => emit(Error(errorMsg: eM ?? "Error"))));
  }

  updateFilter({String search = "", String sort = Constant.itemName}) {
    emit(const Loading());
    _search = search;
    _sort = sort;
    filter();
    emit(Data(data: _tempData));
  }

  filter() {
    _tempData = List.from(_sourceData);
    if (_search.trim().isNotEmpty) {
      _tempData = _tempData
          .where((e) => e.name.toLowerCase().contains(_search.toLowerCase()))
          .toList();
    }
    if (_sort == Constant.itemName) {
      _tempData.sort((a, b) => a.name.compareTo(b.name));
    } else {
      _tempData.sort((a, b) => a.expired.compareTo(b.expired));
    }
  }

  refreshData() async {
    _getStockItem();
  }
}
