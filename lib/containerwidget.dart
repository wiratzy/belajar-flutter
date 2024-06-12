import 'package:flutter/material.dart';

//Latihan ContainerWidget
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Latihan Container Widget",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.red,
          margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: const EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.green, Colors.blue])),
          ),
        ),
      ),
    );
  }
}
//Latihan ContainerWidget