import 'package:flutter/material.dart';
import './popular_news_card.dart';

class PopularNewsList extends StatefulWidget {
  PopularNewsList({Key? key}) : super(key: key);

  @override
  State<PopularNewsList> createState() => _PopularNewsListState();
}

class _PopularNewsListState extends State<PopularNewsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        PopularNewsCard(
          newsImage:
              'https://images.hothardware.com/contentimages/newsitem/60509/content/hero-OnePlus-11%20green.jpg',
          newsTitle:
              'OnePlus 11 Leak Reveals Three Configs, Fresh Images And An Unboxing Shot - Hot Hardware',
          newesDatePublished: '2022-12-30T15:22:00Z',
          newsSource: 'Hot Hardware',
        )
      ],
    );
  }
}