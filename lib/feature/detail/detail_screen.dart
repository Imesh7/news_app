import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/routes/app_router.gr.dart';
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  final Article? article;
  const DetailScreen({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(article?.urlToImage ??
              'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty-300x240.jpg'),
          Text(article!.title ?? ""),
          GestureDetector(
              onTap: () {
                context.pushRoute(DetailWebview(url: article!.url!));
              },
              child: Text("Read more"))
        ],
      ),
    );
  }
}
