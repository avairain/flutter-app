import 'package:flutter/material.dart';

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
