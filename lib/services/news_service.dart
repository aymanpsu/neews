import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/news.dart';

var baseUrl = dotenv.env['NEWS_API_BASE_URL'];
var apiKey = dotenv.env['NEWS_API_KEY'];
Map<String, String> requestHeaders = {
  'Content-type': '	application/json; charset=utf-8',
  'Accept': 'application/json'
};

class NewsService {
  Future<News> fetchLatestNews(int page, int pageNumber,
      [String? category, String? country]) async {
    try {
      final response = await http.get(
        Uri.parse(
          '$baseUrl/top-headlines?country=sa&apiKey=$apiKey&pageSize=$pageNumber&page=$page',
        ),
        headers: requestHeaders,
      );
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        final newsData = newsFromJson(response.body);
        return newsData;
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('${response.statusCode} ${response.reasonPhrase} \n${response.body}');
      }
    } catch (e) {
      throw Exception('Failed to load news due to $e');
    }
  }
}
