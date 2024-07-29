import 'package:flutter/material.dart';
import 'package:news_app/widget/cate_list_view.dart';
import 'package:news_app/widget/list_view_builder.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
      ),
      body:const Padding(
        padding:  EdgeInsets.all(10.0),
        child: CustomScrollView(
          physics:  BouncingScrollPhysics(),
          slivers: [
             SliverToBoxAdapter(
              child: CateListView(),
            ),
             SliverToBoxAdapter(
              child: SizedBox(height: 22),
            ),
            newslistviewbuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
