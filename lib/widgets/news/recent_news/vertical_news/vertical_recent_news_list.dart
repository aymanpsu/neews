import 'package:flutter/material.dart';
import './vertical_recent_news_card_item.dart';
import '../../../../models/news.dart';
import '../../../../pages/news_details_page.dart';
import '../../../../services/news_service.dart';

class VerticalRecentNewsList extends StatefulWidget {
  const VerticalRecentNewsList({Key? key}) : super(key: key);

  @override
  State<VerticalRecentNewsList> createState() => _VerticalRecentNewsListState();
}

class _VerticalRecentNewsListState extends State<VerticalRecentNewsList> {
  late NewsService newsService;
  final int _page = 1;

  @override
  void initState() {
    super.initState();
    newsService = NewsService();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsService.fetchRecentNews(_page, 10),
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
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NewsDetailsPage(
                  newsImage: news.articles[index].urlToImage,
                  newsTitle: news.articles[index].title,
                  newesDatePublished: news.articles[index].publishedAt,
                  newsDescription: news.articles[index].description,
                  newsUrl: news.articles[index].url,
                  newsContent: news.articles[index].content,
                ),
              ),
            );
          },
          child: VerticalRecentNewsCardItem(
            newsImage: news.articles[index].urlToImage,
            newsTitle: news.articles[index].title,
            newesDatePublished: news.articles[index].publishedAt,
            newsSource: news.articles[index].source.name,
          ),
        );
      }),
      itemCount: news.articles.length,
    );
  }
}