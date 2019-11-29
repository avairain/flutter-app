import 'package:flutter/material.dart';
import 'layout.dart' as _layout;

class App extends StatefulWidget {
  App({Key key, this.content}) : super(key: key);
  final String content;
  @override
  State<StatefulWidget> createState() {
    return _App(content: this.content);
  }
}
class _App extends State {
  _App({Key key, this.content}) : super();
  final String content;
  int index = 0;
  Widget build(BuildContext context) {
    print(content);
    return Scaffold(
      appBar: AppBar(title: Text('app')),
      body: _layout.Main(content: this.getBody(index)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Other'),
          ),
        ],
      )
    );
  }
  onTap(int i) {
    if (i == this.index) {
      return false;
    }
    // switch (i) {
    //   case 1:
    //     print('1$i');
    //     Navigator.pushNamed(context, '/other');
    //     break;
    //   case 0:
    //     print('0$i');
    //     Navigator.pushNamed(context, '/');
    //     break;
    // }
    setState(() {
      this.index = i;
    });
  }
  String getBody(int i) {
    switch (i) {
      case 1:
        return 'other';
      case 0:
        return 'home';
    }
  }
}
