class Article {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  Article(
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      json["author"],
      json["title"],
      json["description"],
      json["url"],
      json["urlToImage"],
      DateTime.parse(json["publishedAt"]),
      json["content"],
    );
  }
}
