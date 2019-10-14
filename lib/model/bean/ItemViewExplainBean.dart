class ItemViewExplainBean{
  String title;
  String behindTitle;
  String subtitle;
  String explain;

  ItemViewExplainBean(this.title, this.behindTitle, this.subtitle, this.explain);

  @override
  String toString() {
    return 'ItemViewExplainBean{title: $title, behindTitle: $behindTitle, subtitle: $subtitle, explain: $explain}';
  }


}