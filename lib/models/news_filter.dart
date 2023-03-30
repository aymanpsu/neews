class NewsFilter {
  String name;
  String icon;
  bool? state = false;

  NewsFilter({
    required this.name,
    required this.icon,
    this.state,
  });
}
