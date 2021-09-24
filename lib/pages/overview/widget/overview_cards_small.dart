// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widget/info_cards_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        height: 400,
        child: Column(children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Canceled delivery",
            value: "3",
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "3",
            onTap: () {},
          ),
        ]));
  }
}
