import 'package:flutter/material.dart';

import '../../../helpers/app_genric_styles.dart';

class PopularNewsCard extends StatelessWidget {
  const PopularNewsCard({
    Key? key,
    required this.newsImage,
    required this.newsTitle,
    required this.newesDatePublished,
    this.newsSource,
  }) : super(key: key);

  final String newsImage;
  final String newsTitle;
  final String newesDatePublished;
  final String? newsSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppGenricStyles.imagesBorderRadius,
        boxShadow: const [AppGenricStyles.lightBoxShadow],
      ),
      height: double.infinity,
      width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: ClipRRect(
              borderRadius: AppGenricStyles.imagesBorderRadius,
              child: Image.network(
                newsImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    newsTitle,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              newesDatePublished,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Text(
                              newsSource!,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
