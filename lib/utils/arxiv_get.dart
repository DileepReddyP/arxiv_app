import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

class ArxivGet {
  static final _client = http.Client();
  static Future<AtomFeed> callServer() async {
    var response = await _client.get(Uri.parse(
        'http://export.arxiv.org/api/query?search_query=all:electron&start=0&max_results=10'));
    var feed = AtomFeed.parse(response.body);
    return feed;
  }

  static Future<AtomFeed> arxivSearch(
      String searchQuery, int start, int maxResults) async {
    var response = await _client.get(
      Uri.https('export.arxiv.org', '/api/query', {
        'search_query': searchQuery,
        'start': start.toString(),
        'max_results': maxResults.toString(),
      }),
    );
    var feed = AtomFeed.parse(response.body);
    return feed;
  }
}
