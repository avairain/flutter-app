import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('home'),
          Image.asset(
            'image/ok.jpg',
            height: 100,
          )
        ],
      ),
    );
  }
}

Map model = {
  'home': () {
    return new Home();
  }
};

