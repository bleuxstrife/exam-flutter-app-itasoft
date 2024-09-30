import 'package:exam_app_itasoft/cubit/base/base_cubit.dart';
import 'package:exam_app_itasoft/data_source/repo/warehouse/warehouse_repo.dart';
import 'package:exam_app_itasoft/model/auth/auth.dart';
import 'package:exam_app_itasoft/model/warehouse/warehouse.dart';
import 'package:exam_app_itasoft/state/general_state/general_state.dart';
import 'package:exam_app_itasoft/utils/storage_helper.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../data_source/repo/auth/auth_repo.dart';

class AuthCubit extends BaseCubit with ChangeNotifier{
  late final AuthRepo _repo;
  late final WarehouseRepo _wrRepo;
  final TextEditingController _usernameCtrl = TextEditingController(),
      _passCtrl = TextEditingController();
  AuthCubit(this._repo, this._wrRepo) : super(const Idle());
  LoggedState _loggedInState = LoggedState.loggedOut;
  

  login() {
    showELoading();
    _repo
        .login(username: _usernameCtrl.text, password: _passCtrl.text)
        .then((res) => res.when(
            success: (data) => _getWrCode(data),
            failure: (errorMsg) =>
                hideELoadingWithMsg(message: errorMsg ?? "Error")));

  }

  _getWrCode(Auth auth) {
    _wrRepo.getWarehouseCode().then((res) => res.when(
        success: (data) => _save(auth, data),
        failure: (errorMsg) =>
            hideELoadingWithMsg(message: errorMsg ?? "Error")));
  }

  _save(Auth auth, Warehouse warehouse) {
    StorageHelper.saveLogin(auth, warehouse);
    hideELoading();
    notifyListeners();
  }

  logout(){
    StorageHelper.deleteAll();
    notifyListeners();
  }

  @override
  Future<void> close() async {
    _usernameCtrl.clear();
    _passCtrl.clear();
    return super.close();
  }

  LoggedState get loggedInState {
    _loggedInState = StorageHelper.loggedState;
    return _loggedInState;
  }

  TextEditingController get usernameCtrl => _usernameCtrl;
  TextEditingController get passCtrl => _passCtrl;
}
