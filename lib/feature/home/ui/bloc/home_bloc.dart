import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:news_app/core/usecase/usecase.dart';
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart';
import 'package:news_app/feature/home/domain/usecase/home_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUsecase) : super(InitialHomeState()) {
    on<FetchTopHeadlineNews>(fetchTopHeadlineNews);
  }

  final HomeUsecase _homeUsecase;
  late TopHeadlineNewsModel topHeadlineNewsModel;

  void fetchTopHeadlineNews(
      FetchTopHeadlineNews event, Emitter<HomeState> emit) async {
    try {
      emit(LoadingHomeState());
      topHeadlineNewsModel = await _homeUsecase(NoParams());
      emit(SuccessHomeState(topHeadlineNewsModel));
    } catch (e) {
      emit(FailedHomeState(e.toString()));
    }
  }
}
