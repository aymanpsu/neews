enum FilterState { selected, nonSelected }

class NewsFilter {
  String name;
  String icon;
  FilterState? state = FilterState.nonSelected;

  NewsFilter({
    required this.name,
    required this.icon,
    this.state,
  });
}
