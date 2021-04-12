import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';

class CategoryPage extends StatelessWidget {
  // const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Number(),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 220),
        child: Provide<Counter>(
          builder: (context, child, counter) {
            return Text('${counter.value}');
          },
        ));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: () {
            // Provide.value<Counter>(context).increment();
          },
          child: Text('点击')),
    );
  }
}
