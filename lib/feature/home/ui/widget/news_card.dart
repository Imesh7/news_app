import 'package:flutter/material.dart';
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart';

class NewsCard extends StatelessWidget {
  final Article article;
  const NewsCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Column(
          children: [
            Image.network(
              article.urlToImage ??
                  'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty-300x240.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              article.title!,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  '${article.publishedAt!.year}-${article.publishedAt!.month}-${article.publishedAt!.day}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '${article.description ?? ""}...',
              maxLines: 1,
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
