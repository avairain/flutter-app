import 'package:flutter/material.dart';
import 'component/layout/index.dart' as _Main;

class App extends StatelessWidget {
  App({Key key, this.content}) : super();
  final String content;
  Widget build(BuildContext context) {
    return _Main.App(content: this.content);
  }
}

