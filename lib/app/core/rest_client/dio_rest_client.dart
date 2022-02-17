import 'package:cuidapetmobile/app/core/helpers/environments.dart';
import 'package:cuidapetmobile/app/core/rest_client/rest_client.dart';
import 'package:cuidapetmobile/app/core/rest_client/rest_client_exeption.dart';
import 'package:cuidapetmobile/app/core/rest_client/rest_client_response.dart';
import 'package:dio/dio.dart';

class DioRestClient implements RestClient {
  late Dio _dio;

  final _options = BaseOptions(
    baseUrl: Environments.param('base_url') ?? '',
    connectTimeout:
        int.parse(Environments.param('rest_connection_timeout') ?? '0'),
    receiveTimeout:
        int.parse(Environments.param('rest_receive_timeout') ?? '0'),
  );

  DioRestClient({
    BaseOptions? options,
  }) {
    _dio = Dio(options ?? _options);
  }

  @override
  RestClient auth() {
    _options.extra['auth_required'] = true;
    return this;
  }

  @override
  RestClient unaunth() {
    _options.extra['auth_required'] = false;
    return this;
  }

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ));
      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          StatusMessage: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientExeption(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: _dioErrorConverter(e.response),
      );
    }
  }

  @override
  Future<RestClientResponse<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.get<T>(path,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ));
      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          StatusMessage: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientExeption(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: _dioErrorConverter(e.response),
      );
    }
  }

  @override
  Future<RestClientResponse<T>> put<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.put<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ));
      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          StatusMessage: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientExeption(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: _dioErrorConverter(e.response),
      );
    }
  }

  @override
  Future<RestClientResponse<T>> delete<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.delete<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ));
      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          StatusMessage: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientExeption(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: _dioErrorConverter(e.response),
      );
    }
  }

  @override
  Future<RestClientResponse<T>> patch<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.patch<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ));
      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          StatusMessage: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientExeption(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: _dioErrorConverter(e.response),
      );
    }
  }

  @override
  Future<RestClientResponse<T>> resquest<T>(String path,
      {data,
      required String method,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.request<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: headers, method: method));
      return RestClientResponse(
          data: response.data,
          statusCode: response.statusCode,
          StatusMessage: response.statusMessage);
    } on DioError catch (e) {
      throw RestClientExeption(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
        error: e.error,
        response: _dioErrorConverter(e.response),
      );
    }
  }

  RestClientResponse<T> _dioErrorConverter<T>(Response? response) {
    return RestClientResponse<T>(
      data: response?.data,
      statusCode: response?.statusCode,
      StatusMessage: response?.statusMessage,
    );
  }
}
