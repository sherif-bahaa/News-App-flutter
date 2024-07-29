class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;

  ArticleModel({this.image, required this.title, this.subtitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
