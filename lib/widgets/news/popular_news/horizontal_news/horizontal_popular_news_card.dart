import 'package:flutter/material.dart';
import '../../../../helpers/app_genric_styles.dart';
import '../../../../helpers/covert_datetime.dart';

class HorizontalPopularNewsCard extends StatelessWidget {
  HorizontalPopularNewsCard({
    Key? key,
    required this.newsImage,
    required this.newsTitle,
    required this.newesDatePublished,
    this.newsSource,
  }) : super(key: key);

  late String? newsImage;
  final String newsTitle;
  final DateTime newesDatePublished;
  final String? newsSource;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: Container(
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
                      newsImage ?? 'https://i.ibb.co/WkWz2sM/placeholder-image.png',
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
                                    CovertDatetime()
                                        .displayDatetime(newesDatePublished),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                          letterSpacing: 0.6
                                        ),
                                  ),
                                  Text(
                                    newsSource!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                          letterSpacing: 0.6
                                        ),
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
          ),
        ),
        const SizedBox(
          width: 25.0,
        )
      ],
    );
  }
}
