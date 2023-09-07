part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InitialHomeState extends HomeState {}

class LoadingHomeState extends HomeState {}

class FailedHomeState extends HomeState {
  final String errorMessage;
  FailedHomeState(this.errorMessage);
}

class SuccessHomeState extends HomeState {
  final TopHeadlineNewsModel topHeadlineNewsModel;

  SuccessHomeState(this.topHeadlineNewsModel);
}
