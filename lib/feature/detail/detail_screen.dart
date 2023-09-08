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
      appBar: AppBar(
        title: const Text("Detail Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(article?.urlToImage ??
                'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty-300x240.jpg'),
            const SizedBox(
              height: 10,
            ),
            Text(
              article!.title ?? "",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '${article!.publishedAt!.year}-${article!.publishedAt!.month}-${article!.publishedAt!.day}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text("Author : "),
                Text(article!.author ?? ""),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Content : "),
                Flexible(child: Text(article!.content ?? "")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  context.pushRoute(DetailWebview(url: article!.url!));
                },
                child: const Text("Read more",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    )))
          ],
        ),
      ),
    );
  }
}
