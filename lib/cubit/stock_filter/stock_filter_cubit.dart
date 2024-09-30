import 'package:exam_app_itasoft/state/stock_filter/stock_filter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant/constant.dart';

class StockFilterCubit extends Cubit<StockFilterState> {
  StockFilterCubit() : super(const Idle());
  String _search = "";
  String _sort = Constant.itemName;
  final TextEditingController _searchCtrl = TextEditingController();

  searchOnChanged(String search) {
    emit(const Loading());
    _search = search;
    emit(Filter(sort: _sort, search: _search));
  }

  filterCallback(String? sort) {
    if(sort == null) return;
    emit(const Loading());
    _sort = sort;
    emit(Filter(sort: _sort, search: _search));
  }

  TextEditingController get searchCtrl => _searchCtrl;

  String get sort => _sort;
  List<String> get listFilter => [Constant.itemName, Constant.expDate];
}
