import 'dart:convert';
import 'package:flutter_news_app/models/news_app_article_model.dart';
import 'package:flutter_news_app/models/news_app_news_model.dart';
import 'package:http/http.dart' as http;

class NewsAppApiService {
  static final NewsAppApiService _singleton = NewsAppApiService._internal();

  NewsAppApiService._internal();

  factory NewsAppApiService() {
    return _singleton;
  }

  static Future<List<Article>?> getNews() async {
    var apiUrl = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=8313535e0a9445368e1530788e0a5061');

    final response = await http.get(apiUrl);
    if (response.body.isNotEmpty) {
      final responseJson = json.decode(response.body);
      NewsAppModel newsAppModel = NewsAppModel.fromJson(responseJson);
      return newsAppModel.articles;
    }
    return null;
  }
}
