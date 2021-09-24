// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'helpers/responsivenees.dart';
import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';
import 'widgets/top_nav.dart';

import 'widgets/side_menu.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //*define a parte de cima do site
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        // ignore: prefer_const_constructors
        body: ResponsiveWidget(
          largeScreen: const LargeScreen(),
          smallScreen: const SmallScreen(),
        ));
  }
}
