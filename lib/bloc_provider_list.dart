import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/feature/home/domain/usecase/home_usecase.dart';
import 'package:news_app/inject.dart';

import 'feature/home/ui/bloc/home_bloc.dart';

class BlocProviderList {
  static final providers = [
    BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(getIt<HomeUsecase>()))
  ];
}
