class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? author;
  final String? description;
  final String? url;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.author,
    required this.description,
    required this.url,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      author: json['author'],
      description: json['content'],
      url: json['url'],
    );
  }
}
