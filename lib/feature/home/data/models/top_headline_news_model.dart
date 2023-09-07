// To parse this JSON data, do
//
//     final topHeadlineNews = topHeadlineNewsFromMap(jsonString);

import 'dart:convert';

TopHeadlineNewsModel topHeadlineNewsFromMap(String str) => TopHeadlineNewsModel.fromMap(json.decode(str));

String topHeadlineNewsToMap(TopHeadlineNewsModel data) => json.encode(data.toMap());

class TopHeadlineNewsModel {
    final String? status;
    final int? totalResults;
    final List<Article>? articles;

    TopHeadlineNewsModel({
        this.status,
        this.totalResults,
        this.articles,
    });

    factory TopHeadlineNewsModel.fromMap(Map<String, dynamic> json) => TopHeadlineNewsModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles!.map((x) => x.toMap())),
    };
}

class Article {
    final Source? source;
    final String? author;
    final String? title;
    final String? description;
    final String? url;
    final String? urlToImage;
    final DateTime? publishedAt;
    final String? content;

    Article({
        this.source,
        this.author,
        this.title,
        this.description,
        this.url,
        this.urlToImage,
        this.publishedAt,
        this.content,
    });

    factory Article.fromMap(Map<String, dynamic> json) => Article(
        source: Source.fromMap(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
    );

    Map<String, dynamic> toMap() => {
        "source": source!.toMap(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt!.toIso8601String(),
        "content": content,
    };
}

class Source {
    final String? id;
    final String? name;

    Source({
        this.id,
        this.name,
    });

    factory Source.fromMap(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
    };
}
