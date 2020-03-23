import 'package:flutter/material.dart';

class DefoList extends StatelessWidget {
  DefoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text('Result');
      },
    );
  }
}
