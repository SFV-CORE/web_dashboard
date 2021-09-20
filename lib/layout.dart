import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsivenees.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/medium_screen.dart';
import 'package:web_dashboard/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //define a parte de cima do site
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        // ignore: prefer_const_constructors
        body: ResponsiveWidget(
          largeScreen: const LargeScreen(),
          smallScreen: const SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
