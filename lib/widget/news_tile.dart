import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: articleModel.image == null
                  ? Image.network(
                      " https://media.gettyimages.com/id/155384933/photo/computer-showing-an-error-message.jpg?s=612x612&w=gi&k=20&c=oQHwgjD53Wyk-kHPexPkAnq3X17MsPcIHI4PMXllsio=",
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      articleModel.image!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.subtitle ?? '',
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
