import 'package:flutter/material.dart';

//Latian menggunakan widget TextStyle()
class DesainTeks extends StatelessWidget {
  const DesainTeks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Text style"),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        // ignore: prefer_const_constructors
        child: Text("Ini Adalah Text",
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontFamily: "CrashLandingBB",
                fontSize: 30,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy)),
      ),
    ));
  }
}
//Latian menggunakan widget TextStyle()