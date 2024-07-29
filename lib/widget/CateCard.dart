import 'package:flutter/material.dart';
import 'package:news_app/models/cate_card_model.dart';
import 'package:news_app/views/cate_view.dart';

class Catecard extends StatelessWidget {
  const Catecard({
    super.key,
    required this.cateModel,
  });
  final CateCardModel cateModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CateView(
                category: cateModel.text,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          width: 170,
          height: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(cateModel.image),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Center(
            child: Text(
              cateModel.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
