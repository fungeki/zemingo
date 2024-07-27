import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zemingo_flutter/core/styles.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';
import 'package:zemingo_flutter/general_widgets/cards/z_list_card.dart';

class NewsFeedRow extends StatelessWidget {
  const NewsFeedRow({super.key, required this.newsModel});

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageWidth = size.width * 0.33;
    const imageHeight = 80.0;
    return ZListCard(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (newsModel.imageUrl != null)
            CachedNetworkImage(
              imageUrl: newsModel.imageUrl!,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              newsModel.title,
              style: ZTextStyles.cardHeadline,
            ),
          )),
        ],
      ),
    ));
  }
}
