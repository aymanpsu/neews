import 'package:flutter/material.dart';
import '../../helpers/app_colors.dart';

class ChipFilterItem extends StatefulWidget {
  const ChipFilterItem({
    Key? key,
    required this.imageName,
    required this.filterName,
  }) : super(key: key);
  // passed values to create the widget
  final String imageName;
  final String filterName;

  @override
  State<ChipFilterItem> createState() => _ChipFilterItem();
}

class _ChipFilterItem extends State<ChipFilterItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      elevation: 2.0,
      shadowColor: const Color.fromARGB(54, 0, 0, 0),
      avatar: Image.asset(widget.imageName, width: 19.0),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(8.0),
      label: Text(
        widget.filterName,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      selected: selected,
      selectedColor: AppColors.lightTextColor,
      onSelected: (value) {
        print(value);
      },
    );
  }
}
