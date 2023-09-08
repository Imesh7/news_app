import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routes/app_router.gr.dart';
import 'package:news_app/feature/home/ui/bloc/home_bloc.dart';
import 'widget/news_card.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(FetchTopHeadlineNews());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is LoadingHomeState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is FailedHomeState) {
              return SizedBox(
                height: 200,
                child: Center(child: Text(state.errorMessage)),
              );
            } else if (state is SuccessHomeState) {
              return ListView.builder(
                  physics: const ScrollPhysics(),
                  itemCount: state.topHeadlineNewsModel.articles!.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        state.topHeadlineNewsModel.articles![index].title !=
                                null
                            ? context.pushRoute(DetailRoute(
                                article: state
                                    .topHeadlineNewsModel.articles![index]))
                            : null;
                      },
                      child: NewsCard(
                        article: state.topHeadlineNewsModel.articles![index],
                      ),
                    );
                  });
            } else {
              return const Text("Invalid state");
            }
          },
        ),
      ),
    );
  }
}
