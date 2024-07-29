import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_servies.dart';
import 'package:news_app/widget/sliver_news_list.dart';

class newslistviewbuilder extends StatefulWidget {
  const newslistviewbuilder({
    super.key,
    required this.category,
  });
  @override
  State<newslistviewbuilder> createState() => _newslistviewbuilderState();
  final String category;
}

class _newslistviewbuilderState extends State<newslistviewbuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService().getnews(
      q: widget.category ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, AsyncSnapshot) {
        if (AsyncSnapshot.hasData) {
          return SliverNewsList(
            article: AsyncSnapshot.data!,
          );
        } else if (AsyncSnapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("oops thier is error"),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
