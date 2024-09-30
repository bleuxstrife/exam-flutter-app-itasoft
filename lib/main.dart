import 'package:exam_app_itasoft/app.dart';
import 'package:exam_app_itasoft/constant/constant.dart';
import 'package:exam_app_itasoft/data_source/client/api_service.dart';
import 'package:exam_app_itasoft/utils/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'widgets/app_color.dart';

void main() async {
  await _initApp();
  runApp(const App());
}

Future _initApp() async {
  final futures = <Future>[
    LocalStorage.initHive(),
  ];
  initApiService();
  initLoadingInstance();
  await Future.wait(futures);
}

void initApiService(){
  ApiService apiService = ApiService.instance;
  apiService.configureDio(baseUrl: ApiConstant.baseUrl);
  
}

void initLoadingInstance() => EasyLoading.instance
  ..loadingStyle = EasyLoadingStyle.custom
  ..backgroundColor = Colors.white
  ..indicatorColor = AppColor.systemPurpleColor
  ..textColor = Colors.black
  ..maskColor = Colors.white
  ..maskType = EasyLoadingMaskType.black
  ..indicatorType = EasyLoadingIndicatorType.ring
  ..indicatorSize = 45
  ..radius = 10
  ..progressColor = AppColor.systemPurpleColor
  ..userInteractions = false
  ..dismissOnTap = false;
  
  
