import 'package:flutter/material.dart';
import '.././helpers/app_colors.dart';
import '../helpers/app_genric_styles.dart';
import '../helpers/covert_datetime.dart';
import '../widgets/circle_profile_pic.dart';
import '../helpers/open_url.dart';

class NewsDetailsPage extends StatelessWidget {
  NewsDetailsPage(
      {Key? key,
      this.newsImage,
      required this.newsTitle,
      required this.newesDatePublished,
      this.newsUrl,
      this.newsDescription,
      this.newsContent})
      : super(key: key);

  late String? newsImage;
  final String newsTitle;
  final DateTime newesDatePublished;
  final String? newsUrl;
  final String? newsDescription;
  final String? newsContent;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(newsUrl!);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: 380.0,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(14.0),
                  bottomRight: Radius.circular(14.0),
                ),
                child: Image.network(
                  newsImage ?? 'https://i.ibb.co/WkWz2sM/placeholder-image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: AppGenricStyles.defultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 26.0,
                      ),
                      Text(
                        newsTitle,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        CovertDatetime().displayDatetime(newesDatePublished),
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        newsDescription ?? newsContent ?? '',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      // Text(newsUrl.toString()),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: AppGenricStyles.defultPadding,
                  width: double.infinity,
                  height: 120,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/lightning.png',
                                  width: 20.0,
                                ),
                                const Text(
                                  ' Now discussing',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Stack(
                              children: [
                                const CircleProfilePic(index: 1),
                                const CircleProfilePic(index: 2),
                                const CircleProfilePic(index: 3),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: (28 - 10) * 3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.6,
                                            color: Colors.white10,
                                          ),
                                          color: Colors.white),
                                      // color: Colors.grey[50],
                                      width: 28.0,
                                      height: 28.0,
                                      child: const Center(
                                        child: Text(
                                          '+15',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.lightTextColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: AppColors.lightTextColor,
                        ),
                        onPressed: (() async => OpenUrl().launchTheUrl(url)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Click to view '),
                              Image.asset('assets/icons/right_up_arrow.png')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
