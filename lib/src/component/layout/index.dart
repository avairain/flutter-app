import 'package:flutter/material.dart';
import 'mainbody.dart' as MainBody;
import '../../common/config.dart' as config;

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
    return Scaffold(
      appBar: AppBar(title: Text('app')),
      body: MainBody.Main(content: this.getBody(index)),
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
  mapBottom () {
    List list= [];
    config.routeList.forEach((String key, config.R value) {
      var _i =  Icons as Map;
      var r = null;
      if (_i.containsKey(value.icon)) {
        r = _i.putIfAbsent(value.icon, () => (1));
      }
      list.add(BottomNavigationBarItem(
        icon: Icon(r),
        title: Text(value.page),
      ));
    });
  }
  String getBody(int i) {
    print(i);
    config.R m = null;
    config.routeList.forEach((String key, config.R value) {
      if (value.index == i) {
        m = value;
      }
    });
    if (m != null) {
      return m.page;
    } else {
      return '';
    }
  }
}
