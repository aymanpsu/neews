import '../models/news_filter.dart';

class LocalData {
  final List<NewsFilter> newsFiltersList = [
    NewsFilter(
      name: 'Technology',
      icon: 'assets/icons/filters/technology_icon.png',
    ),
    NewsFilter(
      name: 'Sports',
      icon: 'assets/icons/filters/sports_icon.png',
    ),
    NewsFilter(
      name: 'Business',
      icon: 'assets/icons/filters/business_icon.png',
    ),
    NewsFilter(
      name: 'Entertainment',
      icon: 'assets/icons/filters/entertainment_icon.png',
    ),
    NewsFilter(
      name: 'Health',
      icon: 'assets/icons/filters/health_icon.png',
    ),
    NewsFilter(
      name: 'Science',
      icon: 'assets/icons/filters/science_icon.png',
    ),
    NewsFilter(
      name: 'General',
      icon: 'assets/icons/filters/general_icon.png',
    ),
  ];
}
