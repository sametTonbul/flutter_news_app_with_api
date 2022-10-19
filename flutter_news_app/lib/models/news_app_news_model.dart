import 'news_app_article_model.dart';

class NewsAppModel {
  String status;
  int totalResults;
  List<Article> articles;
  NewsAppModel(
    this.status,
    this.totalResults,
    this.articles,
  );

  factory NewsAppModel.fromJson(Map<String, dynamic> json) {
    return NewsAppModel(
      json["status"],
      json["totalResults"],
      List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );
  }
}
