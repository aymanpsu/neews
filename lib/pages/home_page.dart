import 'package:flutter/material.dart';
import '../widgets/filters/list_of_filters.dart';
import '../widgets/news/recent_news/recent_news_list.dart';
import '../helpers/app_genric_styles.dart';
import '../widgets/show_all_button.dart';
import '../widgets/news/popular_news/popular_news_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: AppGenricStyles.defultPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today news',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: AppGenricStyles.defultBorderRadius,
                        boxShadow: const [AppGenricStyles.lightBoxShadow],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.8),
                        child: Image.asset(
                          'assets/icons/search_icon.png',
                          width: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                padding: AppGenricStyles.paddingForList,
                height: 50.0,
                // color: Colors.red,
                child: const ListOfFilters(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: AppGenricStyles.defultPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent news',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 19.0,
                          ),
                    ),
                    const ShowAllButton()
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                padding: AppGenricStyles.paddingForList,
                height: 350.0,
                child: NewsList(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: AppGenricStyles.defultPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 19.0,
                          ),
                    ),
                    const ShowAllButton()
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: AppGenricStyles.paddingForList,
                  height: 350.0,
                  child: PopularNewsList()
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
