import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../helpers/app_genric_styles.dart';
import '../../../../helpers/covert_datetime.dart';

class VerticalRecentNewsCardItem extends StatelessWidget {
  VerticalRecentNewsCardItem({
    Key? key,
    this.newsImage,
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
    return Column(
      children: [
        const SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: AppGenricStyles.imagesBorderRadius,
              boxShadow: const [AppGenricStyles.lightBoxShadow],
            ),
            height: 350.0,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: AppGenricStyles.imagesBorderRadius,
                    child: CachedNetworkImage(
                      errorWidget: (context, url, error) {
                        return Image.asset(
                          'assets/placeholder_image.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        );
                      },
                      placeholder: (context, url) {
                        return Container(
                          color: Colors.grey[200],
                          width: double.infinity,
                          height: double.infinity,
                        );
                      },
                      imageUrl: newsImage ??
                          'https://i.ibb.co/WkWz2sM/placeholder-image.png',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            letterSpacing: 0.6),
                                  ),
                                  Text(
                                    newsSource!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey,
                                            letterSpacing: 0.6),
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
      ],
    );
  }
}
