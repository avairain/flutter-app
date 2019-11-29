import 'package:flutter/material.dart';
import '../view/home.dart' as home;
import '../view/other.dart' as other;
import '../common/config.dart' as config;

class Route extends StatelessWidget {
  Route({ Key key, this.content }) : super(key: key);
  final String content;
  @override
  Widget build(BuildContext context) {
    
    return renderRoute(this.content);
  }
}

Map getPage() {
  Map page = {};
  page.addAll(home.model);
  page.addAll(other.model);
  return page;
}

StatelessWidget renderRoute (content) {
  var page = getPage();
  if (page[content] == null) {
    return Text('404');
  } else {
    return page[config.routeList[content].page](); // getpage(other, home);
  }
}
