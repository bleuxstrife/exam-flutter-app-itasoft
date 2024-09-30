import 'dart:io';

import 'package:dio/dio.dart';
import 'package:exam_app_itasoft/constant/constant.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  ApiService._internal();
  static final ApiService _instance = ApiService._internal();
  static ApiService get instance => _instance;
  late Dio _dio;

  void configureDio({required String baseUrl}) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ));
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: false,
          request: true,
          requestBody: true));
    }
  }

  Future<dynamic> post(String uri,
      {data,
      Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      bool needToken = false,
      ContentType contentType = ContentType.formURLEncoded}) async {
    try {
      var options = await _getDioOptions(contentType: contentType);
      var response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> get(String uri,
      {Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress,
      bool needToken = false,
      ContentType contentType = ContentType.json}) async {
    try {
      var options = await _getDioOptions(contentType: contentType);
      var response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  static Future<Options> _getDioOptions(
      {ContentType contentType = ContentType.formURLEncoded}) async {
    Map<String, String> header =
        _createHeaderWithoutToken(contentType: contentType);

    return Options(
        headers: header,
        followRedirects: false,
        contentType: contentType == ContentType.formURLEncoded
            ? Headers.formUrlEncodedContentType
            : Headers.jsonContentType,
        validateStatus: (statusCode) => statusCode == 200);
  }

  static Map<String, String> _createHeaderWithoutToken(
      {ContentType contentType = ContentType.formURLEncoded}) {
    return {
      "content-type": contentType == ContentType.formURLEncoded
          ? "application/x-www-form-urlencoded"
          : "application/json",
      "Accept": "application/json",
      "api_id": ApiConstant.apiId,
      "api_key": ApiConstant.apiKey,
    };
  }
}

enum ContentType { formURLEncoded, json }
