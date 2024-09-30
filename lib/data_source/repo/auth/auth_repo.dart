import 'package:exam_app_itasoft/model/auth/auth.dart';
import 'package:exam_app_itasoft/model/data_result/data_result.dart';

abstract class AuthRepo {
  Future<DataResult<Auth>> login(
      {required String username, required String password});
}
