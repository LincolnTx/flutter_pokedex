import 'package:dio/dio.dart';
import 'package:pokedex/app/app_module.dart';
import 'package:pokedex/app/shared/Model/custom_dio/custom_dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  final CustomDio dio = AppModule.to.getDependency<CustomDio>();
  
  @override
  Future onRequest(RequestOptions options){
    print("REQUEST[${options.method}] => PATH: ${options.path}");
    return dio.dioClient.resolve(options);
  }

  @override
  Future onResponse(Response response) {
    print("Response[${response.statusCode}] => PATH: ${response.request.path}");
    return dio.dioClient.resolve(response);
  }

  @override
  Future onError(DioError e ) {
    print("Error[${e.response.statusCode}] => PATH: ${e.response.request.path}");
    if (e.response.statusCode == 404)
      return dio.dioClient.resolve(DioError( error: "Bad resquest"));
    
    return dio.dioClient.resolve(e);
  }
}
