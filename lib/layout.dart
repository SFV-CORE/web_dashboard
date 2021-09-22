import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsivenees.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/medium_screen.dart';
import 'package:web_dashboard/widgets/small_screen.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //*define a parte de cima do site
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        // ignore: prefer_const_constructors
        body: ResponsiveWidget(
          largeScreen: const LargeScreen(),
          smallScreen: const SmallScreen(),
          mediumScreen: const MediumScreen(),
        ));
  }
}
