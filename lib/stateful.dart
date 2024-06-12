import 'package:flutter/material.dart';

//latihan stateful widget dengan membuat sebuah textwidget dan buttonwidget yang dimana textwidget tersebut berisi angka(varibael) dan akan bertambah ketika tombol ditekan
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

int counter = 0;

class _MyWidgetState extends State<MyWidget> {
  void tekanTombol() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Stateful Widget Demo"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 10 + counter.toDouble()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      tekanTombol();
                    },
                    child: const Text("Tambah Bilangan"),
                  )
                ],
              ),
            )));
  }
}
//latihan stateful widget dengan membuat sebuah textwidget dan buttonwidget yang dimana textwidget tersebut berisi angka(varibael) dan akan bertambah ketika tombol ditekan