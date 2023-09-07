import 'package:flutter/material.dart';
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart';

class NewsCard extends StatelessWidget {
  final Article article;
  const NewsCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            article.urlToImage ??
                'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty-300x240.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(article.title!),
          ),
          Text(article.description ?? "")
        ],
      ),
    );
  }
}
