import 'package:flutter/material.dart';
import '../helpers/app_genric_styles.dart';
import '../widgets/news/popular_news/vertical_news/vertical_popular_news_list.dart';

class AllPopularNews extends StatelessWidget {
  const AllPopularNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular News'),
      ),
      body: SafeArea(
        child: Container(
          padding: AppGenricStyles.defultPadding,
          child: Column(
            children: const [
              // TO DO: Add filters in the top
              Expanded(
                child: VerticalPopularNewsList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
