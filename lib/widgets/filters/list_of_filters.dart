import 'package:flutter/material.dart';
import '../../helpers/app_genric_styles.dart';
import 'chip_filter_item.dart';
import '../../data/filters_type.dart';

class ListOfFilters extends StatefulWidget {
  const ListOfFilters({Key? key}) : super(key: key);

  @override
  State<ListOfFilters> createState() => _ListOfFiltersState();
}

class _ListOfFiltersState extends State<ListOfFilters> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppGenricStyles.paddingForList,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: LocalData().newsFiltersList.length,
      itemBuilder: (context, index) {
        return ChipFilterItem(
          imageName: LocalData().newsFiltersList[index].icon,
          filterName: LocalData().newsFiltersList[index].name,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 8.0),
    );
  }
}
