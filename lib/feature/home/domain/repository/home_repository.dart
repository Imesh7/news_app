import '../../data/models/top_headline_news_model.dart';

abstract class HomeRepository {
  Future<TopHeadlineNewsModel> fetchTopHeadlineNews();
}
