// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16), child: localNavigator());
  }
}
