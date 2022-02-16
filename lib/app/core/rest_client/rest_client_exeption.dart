import 'package:cuidapetmobile/app/core/rest_client/rest_client_response.dart';

class RestClientExeption {
  String? message;
  int? statusCode;
  dynamic error;
  RestClientResponse? response;

  RestClientExeption({
    this.message,
    this.statusCode,
    required this.error,
    this.response,
  });

  @override
  String toString() {
    return 'RestClientExceptions(message: $message, statusCode: $statusCode, error: $error, response: $response)';
  }
}
