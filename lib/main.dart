import 'package:flutter/material.dart';

void main() {
  runApp(const ListApp());
}
//latihan list view

class ListApp extends StatefulWidget {
  const ListApp({super.key});

  @override
  State<ListApp> createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan List View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "Data Ke - " + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ));
                        counter++;
                      });
                    },
                    child: Text("Tambah Data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Hapus Data"))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

//latihan list view

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

//latihan menggunakan anonymous Method
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  void tombolDitekan() {
    setState(() {
      message = "Tombol Sudah ditekan";
    });
  }

/*
Pada sesi ini mengajarkan anonymous method yang bentuknya seperti
() {

}

sama seperti setState juga menggunakan anonymous method jika diperhatikan
*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Text(message),
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  onPressed: tombolDitekan,
                  // ignore: prefer_const_constructors
                  child: Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}
//latihan menggunakan anonymous Method

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

///latihan Row Dan Column
class RowCol extends StatelessWidget {
  const RowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Row dan Column"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children: [Text("Text 4"), Text("Text 5"), Text("Text 6")],
            )
          ],
        ),
      ),
    );
  }
}

///latihan Row Dan Column
///Latihan TextWidget
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MLBB 2"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: const Text(
                  "Otnariw adalah seorang explaner yang sangat jago ",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ))),
      ),
    );
  }
}
//Latihan TextWidget