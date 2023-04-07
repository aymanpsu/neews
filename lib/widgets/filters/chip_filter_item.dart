import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../helpers/app_colors.dart';
import '../../providers/filter_provider.dart';
// import 'dart:developer' as developer show log;

class ChipFilterItem extends ConsumerWidget {
  const ChipFilterItem({
    Key? key,
    required this.imageName,
    required this.filterName,
    required this.filterIndex,
  }) : super(key: key);
  // passed values to create the widget
  final String imageName;
  final String filterName;
  final int filterIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(filterUsed);
    return ChoiceChip(
      elevation: 4.0,
      shadowColor: const Color.fromARGB(54, 0, 0, 0),
      avatar: Image.asset(imageName, width: 19.0),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(8.0),
      label: Text(
        filterName,
      ),
      labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: selected ? Colors.white : Colors.black
          ),
      selected: selected,
      selectedColor: AppColors.lightTextColor,
      onSelected: (value) {
        if (value == selected) return;
        ref.read(filterUsed.notifier).state = !selected;
      },
    );
  }
}
