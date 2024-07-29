import 'package:flutter/material.dart';
import 'package:news_app/models/cate_card_model.dart';
import 'package:news_app/widget/CateCard.dart';

class CateListView extends StatelessWidget {
  const CateListView({super.key});
  final List<CateCardModel> category = const [
    CateCardModel(text: "business", image: 'assets/business.avif'),
    CateCardModel(text: "general", image: 'assets/general.avif'),
    CateCardModel(text: "health", image: 'assets/health.avif'),
    CateCardModel(text: "science", image: 'assets/science.avif'),
    CateCardModel(text: "sports", image: 'assets/sports.avif'),
    CateCardModel(text: "technology", image: 'assets/technology.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Catecard(
              cateModel: category[index],
            );
          }),
    );
  }
}
