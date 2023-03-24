import 'package:flutter/material.dart';
import 'recent_news_card_item.dart';
import '../../../services/news_service.dart';
import '../../../models/news.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  late NewsService newsService;

  @override
  void initState() {
    super.initState();
    newsService = NewsService();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsService.fetchLatestNews(1, 10),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          News news = snapshot.data!;
          return _buildListView(news);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show a loading spinner.
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }

  Widget _buildListView(News news) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return NewsCardItem(
          newsImage: news.articles[index].urlToImage,
          newsTitle: news.articles[index].title,
          newesDatePublished: news.articles[index].publishedAt.toString(),
          newsSource: news.articles[index].source.name,
        );
      }),
      itemCount: news.articles.length,
    );
  }
}
