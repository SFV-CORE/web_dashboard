import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // define a parte do side bar
      Expanded(
          child: Container(
        color: Colors.red,
      )),

      //define a parte principal da tela
      Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
          )),
    ]);
  }
}
