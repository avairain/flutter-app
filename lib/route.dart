import 'package:flutter/material.dart';
import 'home.dart' as home;
import 'other.dart' as other;

class Route extends StatelessWidget {
  Route({ Key key, this.content }) : super(key: key);
  final String content;
  @override
  Widget build(BuildContext context) {
    
    return renderRoute(this.content);
  }
}
renderRoute (content) {
  switch (content) {
    case 'home':
      return home.Home();
      break;
    case 'other':
      return other.Other();
      break;
    default:
  }
}