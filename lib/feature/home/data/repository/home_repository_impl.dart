import 'package:dio/dio.dart';
import 'package:news_app/core/api/api_client.dart';
import 'package:news_app/core/exception/exception_handler.dart';
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart';
import 'package:news_app/feature/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  ApiClient apiClient;

  HomeRepositoryImpl(this.apiClient);
  @override
  Future<TopHeadlineNewsModel> fetchTopHeadlineNews() async {
    try {
      Response response = await apiClient.dio.get(
          '/top-headlines?country=us&category=business&apiKey=f4e8d206d0874868b6622b64327409c5');
      return TopHeadlineNewsModel.fromMap(response.data);
    } on DioException catch (e) {
      throw ExceptionHandler.dioErrorHanlder(e);
    }
  }
}
