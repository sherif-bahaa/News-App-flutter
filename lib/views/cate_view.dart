import 'package:flutter/material.dart';
import 'package:news_app/widget/list_view_builder.dart';

class CateView extends StatelessWidget {
  const CateView({super.key, required this.category,  });
  final String category;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: CustomScrollView(slivers: [
        newslistviewbuilder(
          category: category,
        ),
      ]),
    );
  }
}
