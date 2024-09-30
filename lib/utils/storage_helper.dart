import 'dart:convert';

import 'package:exam_app_itasoft/constant/constant.dart';
import 'package:exam_app_itasoft/model/auth/auth.dart';
import 'package:exam_app_itasoft/model/warehouse/warehouse.dart';
import 'package:exam_app_itasoft/utils/local_storage.dart';

class StorageHelper {
  static const String _kAuth = "kAuth";
  static const String _kWarehouse = "kWarehouse";
  static const String _kToken = "kToken";

  static saveLogin(Auth auth, Warehouse warehouse) {
    String authEncoded = json.encode(auth.toJson());
    String wrEncoded = json.encode(warehouse.toJson());
    LocalStorage.saveStringValue(key: _kToken, value: auth.token);
    LocalStorage.saveStringValue(key: _kAuth, value: authEncoded);
    LocalStorage.saveStringValue(key: _kWarehouse, value: wrEncoded);
  }

  static LoggedState get loggedState {
    String? token = LocalStorage.getStringValue(key: _kToken);
    if(token != null) return LoggedState.loggedIn;
    return LoggedState.loggedOut;
  }

  static String get getUsername {
    String? decodeString = LocalStorage.getStringValue(key: _kAuth);
    if (decodeString == null) return "";
    return Auth.fromJson(json.decode(decodeString)).username;
  }

  static String get getWarehouseCode  {
    String? decodeString = LocalStorage.getStringValue(key: _kWarehouse);
    if (decodeString == null) return "";
    return Warehouse.fromJson(json.decode(decodeString)).code;
  }

  static String get getWarehouseUserName {
    String? decodeString = LocalStorage.getStringValue(key: _kWarehouse);
    if (decodeString == null) return "";
    return Warehouse.fromJson(json.decode(decodeString)).username;
  }

  static void deleteAll(){
    LocalStorage.delete(key: _kToken);
    LocalStorage.delete(key: _kAuth);
    LocalStorage.delete(key: _kWarehouse);
  }
}
