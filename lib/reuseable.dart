import 'dart:ui';

import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  ReuseableContainer({this.cchild});
  final Widget cchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cchild,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(35),
      ),
    );
  }
}