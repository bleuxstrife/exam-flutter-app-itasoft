
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';


@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.requestCancelled() = RequestCancelled;

  const factory NetworkException.unauthorizedRequest({int? code}) =
      UnauthorizedRequest;

  const factory NetworkException.badRequest({int? code}) = BadRequest;

  const factory NetworkException.notFound(String reason) = NotFound;

  const factory NetworkException.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkException.notAcceptable() = NotAcceptable;

  const factory NetworkException.requestTimeout() = RequestTimeout;

  const factory NetworkException.sendTimeout() = SendTimeout;

  const factory NetworkException.conflict() = Conflict;

  const factory NetworkException.internalServerError() = InternalServerError;

  const factory NetworkException.notImplemented() = NotImplemented;

  const factory NetworkException.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  const factory NetworkException.formatException() = FormatException;

  const factory NetworkException.unableToProcess() = UnableToProcess;

  const factory NetworkException.defaultError(String error) = DefaultError;

  const factory NetworkException.unexpectedError() = UnexpectedError;

  static String getDioExceptionMessage(error) {
    if (error is Exception) {
      try {
        late String exceptionMessage;
        if (error is DioException) {
          exceptionMessage = error.response?.data["error"] ??
              error.response?.data["message"] ??
              error.message;
        } else if (error is SocketException) {
          exceptionMessage = "Tidak ada koneksi internet";
        } else {
          exceptionMessage = "Terjadi kesalahan tak terduga";
        }
        if (kDebugMode) debugPrint(error.toString());
        return exceptionMessage;
      } on FormatException catch (e) {
        if (kDebugMode) debugPrint(e.toString());
        return "Terjadi kesalahan tak terduga";
      } catch (_) {
        return "Terjadi kesalahan tak terduga";
      }
    } else {
      if (kDebugMode) debugPrint("Error: ${error.toString()}");
      if (error.toString().contains("is not a subtype of")) {
        return "Tidak dapat memproses data";
      } else {
        return 'Terjadi kesalahan tak terduga';
      }
    }
  }

  static NetworkException handleResponse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return const NetworkException.badRequest();
      case 401:
      case 403:
        return const NetworkException.unauthorizedRequest();
      case 404:
        return const NetworkException.notFound("404 Error");
      case 409:
        return const NetworkException.conflict();
      case 408:
        return const NetworkException.requestTimeout();
      case 500:
        return const NetworkException.internalServerError();
      case 503:
        return const NetworkException.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkException.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

   static NetworkException? getDioException(error) {
    if (error is Exception) {
      try {
        NetworkException? networkExceptions;
        if (error is DioException) {
          switch (error.type) {
             case DioExceptionType.cancel:
              networkExceptions = const NetworkException.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkException.requestTimeout();
              break;
            case DioExceptionType.unknown:
              networkExceptions = const NetworkException.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkException.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions =
                  NetworkException.handleResponse(error.response!.statusCode);
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkException.sendTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = const NetworkException.unexpectedError();
              break;
            case DioExceptionType.connectionError:
              networkExceptions = const NetworkException.unexpectedError();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkException.noInternetConnection();
        } else {
          networkExceptions = const NetworkException.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        // Helper.printError(e.toString());
        return const NetworkException.formatException();
      } catch (_) {
        return const NetworkException.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkException.unableToProcess();
      } else {
        return const NetworkException.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkException networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = "Belum diimplementasi";
    }, requestCancelled: () {
      errorMessage = "Permintaan digagalkan";
    }, internalServerError: () {
      errorMessage = "Terjadi error internal pada server";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Layanan tidak tersedia";
    }, methodNotAllowed: () {
      errorMessage = "Metode tidak diijinkan";
    }, badRequest: (int? code) {
      errorMessage = "Permintaan buruk ${code ?? ""}";
    }, unauthorizedRequest: (int? code) {
      errorMessage = "Permintaan tidak dapat diautentikasi ${code ?? ""}";
    }, unexpectedError: () {
      errorMessage = "Terjadi kesalahan tak terduga";
    }, requestTimeout: () {
      errorMessage = "koneksi permintaan timeout";
    }, noInternetConnection: () {
      errorMessage = "Tidak ada koneksi internet";
    }, conflict: () {
      errorMessage = "Terjadi error karena konflik";
    }, sendTimeout: () {
      errorMessage = "Pengiriman gagal karena timeout";
    }, unableToProcess: () {
      errorMessage = "Tidak dapat memproses data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Terjadi kesalahan tak terduga";
    }, notAcceptable: () {
      errorMessage = "Tidak diterima";
    });
    return errorMessage;
  }
	
}
