import 'package:arxiv_app/components/article_info.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/atom_item.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final AtomItem article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showArticleInfo(context, article: article),
      child: Card(
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Center(
          child: ListTile(
            title: Text(
              article.title!.replaceAll('\n', ' '),
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 2,
            ),
            subtitle: Text(article.id!),
          ),
        ),
      ),
    );
  }
}
