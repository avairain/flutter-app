import 'package:flutter/material.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('other');
  }
}

Map model = {
  'other': () {
    return new Other();
  }
};
