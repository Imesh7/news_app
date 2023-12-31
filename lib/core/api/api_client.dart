
import 'package:dio/dio.dart';
import 'package:news_app/util/constant.dart';

class ApiClient {
  Dio dio;
  ApiClient(this.dio) {
    setupDio();
  }

  setupDio() {
    dio.options = BaseOptions(
        baseUrl: Constants.baseUrl,
        connectTimeout: Constants.connectionTimeout,
        receiveTimeout: Constants.receiveTimeout,
        contentType: 'application/json');
  }
}