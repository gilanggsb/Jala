import 'dart:convert';

import 'package:dio/dio.dart';

import '../../common.dart';

abstract class ApiService {
  Future<BaseResponse> get(
    String endpoints, {
    Map<String, dynamic> queryParams,
  });
  Future<BaseResponse> post(String endpoints, Map<String, dynamic> body);
  Future<Response> getPlainResponse(
    String endpoints, {
    Map<String, dynamic> queryParams,
  });
}

class ApiServiceImpl extends ApiService {
  final Dio dio;
  final NetworkService connection = getIt<NetworkService>();

  ApiServiceImpl({required this.dio}) {
    initDIO();
  }

  void initDIO() {
    dio.options.baseUrl = URL.base;
    dio.options.connectTimeout = const Duration(milliseconds: 5000);
    dio.interceptors.add(const CustomInterceptors());
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    );
    dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
  }

  BaseResponse parseResponse(Response response) {
    try {
      final BaseResponse baseResponse = BaseResponse.fromJson(response.data);
      if (baseResponse.status == 200) {
        return baseResponse;
      }
      throw ServerFailure(baseResponse.msg);
    } catch (e) {
      rethrow;
    }
  }

  dynamic parseError(DioException e) {
    if (e.type == DioExceptionType.badResponse) {
      BadResponse badResponse = BadResponse.fromJson(e.response?.data);
      throw ServerException(badResponse.message ?? '');
    }
    if (e.type == DioExceptionType.connectionTimeout) {
      throw const ServerFailure('check your connection');
    }

    if (e.type == DioExceptionType.receiveTimeout) {
      throw const ServerFailure('unable to connect to the server');
    }

    if (e.type == DioExceptionType.unknown) {
      throw const ServerFailure('Something went wrong');
    }
  }

  @override
  Future<BaseResponse> post(String endpoints, Map<String, dynamic> body) async {
    try {
      if (!(await connection.hasConnection)) {
        throw const ServerFailure("check your connection");
      }
      final Response response =
          await dio.post(endpoints, data: jsonEncode(body));
      return parseResponse(response);
    } on DioException catch (e) {
      return parseError(e);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BaseResponse> get(
    String endpoints, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      if (!(await connection.hasConnection)) {
        throw const ServerFailure("check your connection");
      }
      final Response response =
          await dio.get(endpoints, queryParameters: queryParams);
      return parseResponse(response);
    } on DioException catch (e) {
      return parseError(e);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response> getPlainResponse(
    String endpoints, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      if (!(await connection.hasConnection)) {
        throw const ServerFailure("check your connection");
      }
      final Response response =
          await dio.get(endpoints, queryParameters: queryParams);
      return response;
    } on DioException catch (e) {
      return parseError(e);
    } catch (e) {
      rethrow;
    }
  }
}
