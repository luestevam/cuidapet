import 'package:cuidapetmobile/app/core/helpers/environments.dart';
import 'package:cuidapetmobile/app/core/rest_client/rest_client.dart';
import 'package:cuidapetmobile/app/core/rest_client/rest_client_response.dart';
import 'package:dio/dio.dart';

class DioRestClient implements RestClient {
  late Dio _dio;
  final _options = BaseOptions(
      baseUrl: Environments.param('base_url') ?? '',
      connectTimeout:
          int.parse(Environments.param('rest_connection_timeout') ?? '0'),
      receiveTimeout:
          int.parse(Environments.param('rest_receive_timeout') ?? '0'));
  @override
  RestClient auth() {
    // TODO: implement auth
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> delete<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters, Map<String, dynamic>? header}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> patch<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> put<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<RestClientResponse<T>> resquest<T>(String path,
      {data,
      required String method,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) {
    // TODO: implement resquest
    throw UnimplementedError();
  }

  @override
  RestClient unaunth() {
    // TODO: implement unaunth
    throw UnimplementedError();
  }
}
