import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options){
    print("REQUEST[${options.method}] => PATH: ${options.path}");
    return options;
  }

  @override
  onResponse(Response response) {
    print("Response[${response.statusCode}] => PATH: ${response.request.path}");
    return response;
  }

  @override
  onError(DioError e ) {
    print("Error[${e.response.statusCode}] => PATH: ${e.response.request.path}");
    if (e.response.statusCode == 404)
      return DioError(message: "Bad resquest");
    
    return e;
  }
}