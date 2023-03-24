import 'package:flutter/material.dart';
import 'package:watch_news/pages/all_popular_news.dart';

import '../helpers/app_colors.dart';

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AllPopularNews(),
          ),
        );
      },
      child: Text(
        'Show all',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.lightTextColor,
              fontWeight: FontWeight.normal,
              fontSize: 13.0,
            ),
      ),
    );
  }
}
