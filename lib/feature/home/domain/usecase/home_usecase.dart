import 'package:news_app/core/usecase/usecase.dart';
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart';
import 'package:news_app/feature/home/data/repository/home_repository_impl.dart';

class HomeUsecase extends Usecase<TopHeadlineNewsModel, NoParams> {
  HomeRepositoryImpl homeRepositoryImpl;

  HomeUsecase(this.homeRepositoryImpl);
  @override
  Future<TopHeadlineNewsModel> call(params) async {
    return homeRepositoryImpl.fetchTopHeadlineNews();
  }
}
