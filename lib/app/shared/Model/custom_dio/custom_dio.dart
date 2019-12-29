import 'package:dio/dio.dart';
import 'package:pokedex/app/shared/Model/constants.dart';
import 'package:pokedex/app/shared/Model/custom_dio/interceptors.dart';


class CustomDio extends Dio {

  CustomDio() {
    options.baseUrl= BASE_URL;
    interceptors.add(CustomInterceptors());
    options.connectTimeout = 5000;
  }
}