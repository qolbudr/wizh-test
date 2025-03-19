// ignore_for_file: unused_local_variable
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wizh_test/core/api/token_interceptor.dart';
import 'package:wizh_test/core/constant/const.dart';
import 'package:wizh_test/core/enums/api_type.dart';
import 'package:wizh_test/core/errors/exception.dart';

enum NetworkMethod { get, post, delete, patch }

abstract interface class Api {
  Future<T> req<T>({
    required NetworkMethod method,
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    T Function(dynamic json)? fromJsonT,
  });

  Future<T> reqWithToken<T>({
    required NetworkMethod method,
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    T Function(dynamic json)? fromJsonT,
  });

  void dispose();
}

class IApi implements Api {
  @override
  Future<T> req<T>({required NetworkMethod method, required String url, Map<String, dynamic>? query, Map<String, dynamic>? data, T Function(dynamic json)? fromJsonT}) async {
    try {
      late EApiType apiType;

      if (kDebugMode) {
        apiType = EApiType.development;
      } else {
        apiType = EApiType.production;
      }

      final dio = Dio();
      // if (kDebugMode) dio.interceptors.add(PasarSafe.chuck.getDioInterceptor());

      if (query != null) {
        query.removeWhere((key, value) => value == null);

        if (url.substring(0, url.length) == '/') url = url.substring(0, url.length - 1);

        String queryPath = '';

        for (var key in query.keys) {
          queryPath += '&$key=${query[key]}';
        }

        queryPath = queryPath.substring(1, queryPath.length);

        url += '?$queryPath';
      }

      url = "${Const.baseUrl}$url";

      FormData? formData;
      bool containFile = false;

      if (data != null) {
        data.removeWhere((key, value) => value == null);
        data.forEach((key, value) {
          if (value is XFile) {
            containFile = true;
          }
        });

        if (containFile) {
          final dataWithForm = FormData.fromMap(data.map((key, value) {
            if (value is XFile) {
              return MapEntry(key, MultipartFile.fromFileSync(value.path));
            }
            return MapEntry(key, value);
          }));

          formData = dataWithForm;
        }
      }

      final response = await dio.request(
        url,
        data: containFile ? formData : data,
        options: Options(method: method.toString().split('.').last),
      );

      final logMessage = [
        '[ApiReq : URL  ] : ${response.requestOptions.method} ${response.statusCode} $url',
        '[ApiReq : Head ] : ${jsonEncode(response.requestOptions.headers)}',
        if (!containFile) '[ApiReq : Data ] : ${jsonEncode(data)}',
        '[ApiReq : Res  ] : ${jsonEncode(response.data)}',
      ];

      if (kDebugMode) log(logMessage.join("\n"));

      if (fromJsonT != null) {
        return fromJsonT(response.data);
      }

      return response.data as T;
    } on DioException catch (error) {
      String? errMessage;

      if (error.response?.data is Map<String, dynamic>) {
        if ((error.response?.data as Map<String, dynamic>?)?.containsKey('message') ?? false) {
          errMessage = error.response?.data['message'];
        }
      }

      if (kDebugMode) log('[ApiReq : Error] : $errMessage');

      if (errMessage != null) throw ClientException(message: errMessage);
      if (error.error is TimeoutException) throw const ConnectionException(message: "Connection TImeout");
      if (error.error is SocketException) throw const ConnectionException(message: "No Internet");

      throw ServerException(message: error.message, code: 500);
    } catch (error) {
      if (kDebugMode) log('[ApiReq : Error] : $error');
      throw ServerException(message: error.toString(), code: 500);
    }
  }

  @override
  Future<T> reqWithToken<T>({required NetworkMethod method, required String url, Map<String, dynamic>? query, Map<String, dynamic>? data, T Function(dynamic json)? fromJsonT}) async {
    try {
      late EApiType apiType;

      if (kDebugMode) {
        apiType = EApiType.development;
      } else {
        apiType = EApiType.production;
      }

      final tokenInterceptor = TokenInterceptor();

      final dio = Dio();
      // if (kDebugMode) dio.interceptors.add(PasarSafe.chuck.getDioInterceptor());
      dio.interceptors.add(tokenInterceptor);

      if (query != null) {
        query.removeWhere((key, value) => value == null || ((value is String) && (value).isEmpty));

        if (url.substring(0, url.length) == '/') url = url.substring(0, url.length - 1);

        String queryPath = '';

        for (var key in query.keys) {
          queryPath += '&$key=${query[key]}';
        }

        queryPath = queryPath.substring(1, queryPath.length);

        url += '?$queryPath';
      }

      url = "${Const.baseUrl}$url";

      FormData? formData;
      bool containFile = false;

      if (data != null) {
        data.removeWhere((key, value) => value == null);
        data.forEach((key, value) {
          if (value is XFile) {
            containFile = true;
          }
        });

        if (containFile) {
          final dataWithForm = FormData.fromMap(data.map((key, value) {
            if (value is XFile) {
              return MapEntry(key, MultipartFile.fromFileSync(value.path));
            }
            return MapEntry(key, value);
          }));

          formData = dataWithForm;
        }
      }

      final response = await dio.request(
        url,
        data: containFile ? formData : data,
        options: Options(method: method.toString().split('.').last),
      );

      final logMessage = [
        '[ApiReq : URL  ] : ${response.requestOptions.method} ${response.statusCode} $url',
        '[ApiReq : Head ] : ${jsonEncode(response.requestOptions.headers)}',
        if (!containFile) '[ApiReq : Data ] : ${jsonEncode(data)}',
        '[ApiReq : Res  ] : ${jsonEncode(response.data)}',
      ];

      if (kDebugMode) log(logMessage.join("\n"));

      if (fromJsonT != null) {
        return fromJsonT(response.data);
      }

      return response.data as T;
    } on DioException catch (error) {
      String? errMessage;

      if (error.response?.data is Map<String, dynamic>) {
        if ((error.response?.data as Map<String, dynamic>?)?.containsKey('message') ?? false) {
          errMessage = error.response?.data['message'];
        }
      }

      if (kDebugMode) log('[ApiReq : Error] : $errMessage');

      if (errMessage != null) throw ClientException(message: errMessage);
      if (error.error is TimeoutException) throw const ConnectionException(message: "Connection TImeout");
      if (error.error is SocketException) throw const ConnectionException(message: "No Internet");

      throw ServerException(message: error.message, code: 500);
    } catch (error) {
      if (kDebugMode) log('[ApiReq : Error] : $error');
      throw ServerException(message: error.toString(), code: 500);
    }
  }

  @override
  void dispose() {}
}
