import 'package:arxiv_app/components/article_card.dart';
import 'package:arxiv_app/components/list_heading_text.dart';
import 'package:arxiv_app/state/query_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webfeed/domain/atom_feed.dart';
import 'package:webfeed/domain/atom_item.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({
    Key? key,
  }) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  List<AtomItem> _feed = [];

  @override
  void dispose() {
    super.dispose();
    Provider.of<QueryState>(context).close();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QueryState>(
      builder: (context, queryState, child) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              pinned: true,
              floating: true,
              expandedHeight: 200,
              collapsedHeight: 80,
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                title: ListHeadingText(text: '>Results'),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20.0),
                child: Text(
                  queryState.query,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            StreamBuilder<AtomFeed>(
              stream: queryState.articleFeed,
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.active) {
                  _feed.clear();
                  queryState.addArticles(0, 50);
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  );
                }
                if (snapshot.hasData) {
                  _feed = [..._feed, ...snapshot.data!.items!];
                  return SliverFixedExtentList(
                    itemExtent: 110.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        if (index == _feed.length) {
                          queryState.addArticles(index, 50);
                        }
                        if (index >= _feed.length) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        }
                        var article = _feed[index];
                        return ArticleCard(article: article);
                      },
                      childCount: _feed.length + 1,
                    ),
                  );
                } else {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  );
                }
              },
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
          ],
        );
      },
    );
  }
}
