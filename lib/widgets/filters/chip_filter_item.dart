import 'package:flutter/material.dart';
import '../../helpers/app_colors.dart';

class ChipFilterItem extends StatelessWidget {
  const ChipFilterItem({
    Key? key,
    required this.imageName,
    required this.filterName,
  }) : super(key: key);
  // passed values to create the widget
  final String imageName;
  final String filterName;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      elevation: 2.0,
      shadowColor: const Color.fromARGB(54, 0, 0, 0),
      avatar: Image.asset(imageName, width: 19.0),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(8.0),
      label: Text(
        filterName,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      selected: false,
      selectedColor: AppColors.lightTextColor,
    );
  }
}
