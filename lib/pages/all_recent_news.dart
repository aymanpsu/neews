import 'package:flutter/material.dart';
import '../helpers/app_genric_styles.dart';
import '../widgets/news/recent_news/vertical_news/vertical_recent_news_list.dart';

class AllRecentNews extends StatelessWidget {
  const AllRecentNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recent News'),
      ),
      body: SafeArea(
        child: Container(
          padding: AppGenricStyles.defultPadding,
          child: Column(
            children: const[
              Expanded(
                child: VerticalRecentNewsList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
