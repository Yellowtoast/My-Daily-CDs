import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../data/model/dto/api_call_dto.dart';
import '../error_handling/exceptions.dart';
import '../values/api_url.dart';
import '../values/constants.dart';

enum RequestType { GET, POST, DELETE }

class Api {
  final dio = createDio();

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: HttpUrl.BASE_URL,
      receiveTimeout: 20000,
      connectTimeout: 20000,
      sendTimeout: 20000,
    ));

    dio.interceptors.addAll({
      AuthInterceptor(dio),
    });

    dio.interceptors.addAll({
      Logging(dio),
    });

    dio.interceptors.addAll({
      ErrorInterceptors(dio),
    });
    return dio;
  }

  Future<Map<String, dynamic>> apiCall(ApiCallDTO apiCallModel) async {
    Response? result;
    try {
      switch (apiCallModel.requestType) {
        case RequestType.GET:
          {
            Options options = Options(headers: apiCallModel.header);

            result = await dio.get(apiCallModel.url,
                queryParameters: apiCallModel.data, options: options);
            break;
          }
        case RequestType.POST:
          {
            Options options = Options(headers: apiCallModel.header);
            result = await dio.post(apiCallModel.url,
                data: apiCallModel.data, options: options);

            break;
          }

        case RequestType.DELETE:
          {
            Options options = Options(headers: apiCallModel.header);
            //TODO: 원래는 dio.delete 사용이 맞지만 백앤드와 합의 전이라 post 사용
            result = await dio.post(apiCallModel.url,
                data: apiCallModel.data, options: options);
            break;
          }
      }
      // if (result != null) {
      //   if (result.data['data'] != null) {
      //     return result.data['data'] as Map<String, dynamic>;
      //   } else {
      //     return result.data;
      //   }
      // } else {
      //   throw NoDataException();
      // }

      if (result.data != null) {
        return result.data as Map<String, dynamic>;
      } else {
        throw NoDataException();
      }
    } catch (exception) {
      print(exception);
      rethrow;
    }
  }
}

class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers.containsKey('requiresToken')) {
      late String authKey;
      if (options.headers['requiresToken']) {
        authKey = Constants.REST_API_KEY;
      } else {
        authKey = Constants.REST_API_KEY;
      }
      options.headers.remove('requiresToken');
      options.headers['Authorization'] = 'KakaoAK $authKey';
    }

    return handler.next(options);
  }
}

class ErrorInterceptors extends Interceptor {
  final Dio dio;

  ErrorInterceptors(this.dio);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw TimeOutException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 403:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        if (kDebugMode) {
          print(err);
        }
        if (!err.requestOptions.queryParameters['query']
            .contains(RegExp(r'[a-z|A-Z|0-9|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ]'))) {
          throw WrongTextException(err.requestOptions);
        } else {
          throw NoInternetConnectionException(err.requestOptions);
        }
    }

    return handler.next(err);
  }
}

class Logging extends Interceptor {
  final Dio dio;
  Logging(this.dio);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      if (options.contentType != "multipart/form-data") {
        var prettyQuery =
            const JsonEncoder.withIndent('  ').convert(options.queryParameters);
        var prettyBody =
            const JsonEncoder.withIndent('  ').convert(options.data);
        var prettyHeader =
            const JsonEncoder.withIndent('  ').convert(options.headers);
        log('\n🧡 REQUEST[${options.method}] => PATH: ${options.path}\n🔸 HEADER: $prettyHeader\n🔸 QUERY: $prettyQuery\n🔸 BODY: $prettyBody');
        // log('\n🧡 REQUEST[${options.method}] => PATH: ${options.uri}\n🔸 BODY: ${options.data}');
      } else {
        log('\n🧡 REQUEST[${options.method}] => PATH: ${options.path}\n🔸 BODY: ${options.data}');
        // log('\n🧡 REQUEST[${options.method}] => PATH: ${options.uri}\n🔸 BODY: ${options.data}');
      }
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      var prettyData = JsonEncoder.withIndent('  ').convert(response.data);

      log(
        '\n💙 RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}\n🔹 DATA: $prettyData',
      );
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log(
        '\n💔 ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}\n🔻 ERROR_INFO: ${err.response?.data['error']}',
      );
    }

    return super.onError(err, handler);
  }
}
