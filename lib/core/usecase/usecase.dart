import 'package:equatable/equatable.dart';

abstract class Usecase<T, NoParams> {
 Future<T> call(NoParams params);
}


class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
  
}