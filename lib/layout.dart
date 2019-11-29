import 'package:flutter/material.dart';
import 'page.dart' as _page;
import 'route.dart' as _route;

class Main extends StatelessWidget {
  Main({Key key, this.content}) : super(key: key);
  final String content;
  @override
  Widget build (BuildContext context) {
    return Column(
      children: <Widget>[
        _page.Page(content: _route.Route(content: this.content))
      ],
    );
  }
}

class MarginLeft10 extends StatelessWidget {
  MarginLeft10({Key key, this.content}) : super(key: key);
  final StatelessWidget content;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: content,
    );
  }
}