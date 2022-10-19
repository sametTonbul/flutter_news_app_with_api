import 'package:flutter/material.dart';
import 'package:flutter_news_app/services/news_app_api_service.dart';
import 'package:flutter_news_app/views/news_app_profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/news_app_article_model.dart';

class NewsAppHomeScreen extends StatefulWidget {
  const NewsAppHomeScreen({super.key});

  @override
  State<NewsAppHomeScreen> createState() => _NewsAppHomeScreenState();
}

class _NewsAppHomeScreenState extends State<NewsAppHomeScreen> {
  List<Article>? articles = [];
  @override
  void initState() {
    NewsAppApiService.getNews().then((value) {
      setState(() {
        articles = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const NewsAppProfileRegisterScreen()));
            },
            icon: const Icon(Icons.person_add),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: articles!.length,
          itemBuilder: ((context, index) {
            return Card(
              child: Column(
                children: [
                  Image.network(articles![index].urlToImage.toString()),
                  ListTile(
                    title: Text(articles![index].title.toString()),
                    subtitle: Text(articles![index].author.toString()),
                    leading: const Icon(Icons.arrow_drop_down_circle_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(articles![index].description.toString()),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () async {
                          await launchUrl(
                              Uri.parse(articles![index].url.toString()));
                        },
                        child: const Text('Habere git'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
