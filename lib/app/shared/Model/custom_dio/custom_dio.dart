import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/Model/constants.dart';
import 'package:pokedex/app/shared/Model/custom_dio/interceptors.dart';

class CustomDio {

  final Dio dioClient ;
  CustomDio(this.dioClient) {
    dioClient.options.baseUrl= BASE_URL;
    // dioClient.interceptors.add(CustomInterceptors());
    dioClient.options.connectTimeout = 5000;
  }
}
