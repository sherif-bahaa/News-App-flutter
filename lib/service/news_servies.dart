import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getnews({required String q}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/everything?q=$q&apiKey=31f19e52dbe946cf9273a381bdfa8f36&language=ar');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
