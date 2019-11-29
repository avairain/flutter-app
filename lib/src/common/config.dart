
class R {
  final String page;
  final String icon;
  final int index;
  R({this.page = null, this.icon = null, this.index = null});
}

Map<String, R> routeList = {
  'home': R(
    page: 'home',
    icon: 'home',
    index: 0
  ),
  'other': R(
    page: 'other',
    icon: 'person',
    index: 1
  )
};