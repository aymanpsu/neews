import 'package:flutter/material.dart';
import '../../../../helpers/app_genric_styles.dart';
import '../../../../models/news.dart';
import '../../../../pages/news_details_page.dart';
import 'horizontal_popular_news_card.dart';
import '../../../../services/news_service.dart';
import '../../../skeletons/news_skeleton_card.dart';

class HorizontalPopularNewsList extends StatefulWidget {
  const HorizontalPopularNewsList({Key? key}) : super(key: key);

  @override
  State<HorizontalPopularNewsList> createState() =>
      _HorizontalPopularNewsListState();
}

class _HorizontalPopularNewsListState extends State<HorizontalPopularNewsList> {
  late NewsService newsService;

  @override
  void initState() {
    super.initState();
    newsService = NewsService();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsService.fetchPopularNews(1, 8),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          News news = snapshot.data!;
          return _buildListView(news);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show skeleton loading.
        return const NewsSkeletonCardItem();
      }),
    );
  }

  Widget _buildListView(News news) {
    return ListView.builder(
      padding: AppGenricStyles.defultPadding,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
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
          child: HorizontalPopularNewsCard(
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
