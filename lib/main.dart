import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'layout.dart';

import 'controllers/menu_controller.dart';

void main() {
  Get.put(MenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash", //*Titulo da pagina
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,

          //*Define a cor de todo o texto como preto
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          //*

          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
      //*define a pagina inicial
      home: SiteLayout(),
    );
  }
}
