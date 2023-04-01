import 'package:flutter/material.dart';
import '../pages/all_recent_news.dart';
import '../pages/all_popular_news.dart';

import '../helpers/app_colors.dart';

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({
    Key? key,
    required this.destination,
  }) : super(key: key);

  final String destination;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => destination == 'popular'
                ? const AllPopularNews()
                : const AllRecentNews(),
          ),
        );
      },
      child: Text(
        'Show all',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.lightTextColor,
              fontWeight: FontWeight.w300,
              fontSize: 13.0,
            ),
      ),
    );
  }
}
