import 'dart:async';

import 'package:arxiv_app/utils/arxiv_get.dart';
import 'package:flutter/foundation.dart';
import 'package:webfeed/webfeed.dart';

class QueryState extends ChangeNotifier {
  String _query;
  final _streamController = StreamController<AtomFeed>.broadcast();
  QueryState(String query) : _query = query;
  get query => _query;
  set newQuery(String newQuery) {
    _query = newQuery;
    notifyListeners();
  }

  Stream<AtomFeed> get articleFeed =>
      _streamController.stream.asBroadcastStream();

  Future addArticles(int start, int maxResults) async {
    AtomFeed newArticles = await ArxivGet.arxivSearch(_query, start, maxResults);
    print("sent $_query, int $start");
    _streamController.add(newArticles);
  }

  void close() {
    _streamController.close();
  }
}
