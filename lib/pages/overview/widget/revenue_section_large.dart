// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

import 'bar_chart.dart';
import 'revenue_info.dart';

class RevenueSectionLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12),
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: "Revenue Chart",
                size: 20,
                weight: FontWeight.bold,
                color: lightGrey,
              ),
              Container(
                width: 600,
                height: 200,
                child: SimpleBarChart.withSampleData(),
              )
            ],
          )),
          Container(
            width: 1,
            height: 120,
            color: lightGrey,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  RevenueInfo(
                    title: "Today's revenue",
                    amount: "23",
                  ),
                  RevenueInfo(
                    title: "Last 7 days",
                    amount: "150",
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  RevenueInfo(
                    title: "Last 30 days",
                    amount: "1,203",
                  ),
                  RevenueInfo(
                    title: "Last 12 months",
                    amount: "3,234",
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
