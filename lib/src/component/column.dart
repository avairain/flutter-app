import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content({Key key, this.content}) : super(key: key);
  final String content;
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('$content')
      ],
    );
  }
}