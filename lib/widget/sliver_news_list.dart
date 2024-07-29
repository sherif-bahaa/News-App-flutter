import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widget/news_tile.dart';



class SliverNewsList extends StatelessWidget {
  final List<ArticleModel> article ;

  const SliverNewsList({super.key, required this.article});



  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: article.length,
        (context, index) {
          return NewsTile(
            articleModel: article[index],
          );
        },
      ),
    );
  }
}
