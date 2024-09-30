import 'package:exam_app_itasoft/data_source/client/api_service.dart';
import 'package:exam_app_itasoft/data_source/repo/auth/auth_repo.dart';
import 'package:exam_app_itasoft/model/auth/auth.dart';
import 'package:exam_app_itasoft/model/data_result/data_result.dart';

import '../../../model/network_exception/network_exception.dart';

class AuthRepoImpl extends AuthRepo {
  late ApiService _apiService;

  AuthRepoImpl() {
    _apiService = ApiService.instance;
  }

  @override
  Future<DataResult<Auth>> login(
      {required String username, required String password}) async {
    try {
      final response = await _apiService.post("/sso",
          data: {"j_username": username, "j_password": password},
          needToken: true);
      var data = response;
      return DataResult.success(data: Auth.fromJson(data));
    } catch (e) {
      return DataResult.failure(
          errorMsg: NetworkException.getDioExceptionMessage(e));
    }
  }
}
