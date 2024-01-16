import 'package:flutter/material.dart';
import 'package:homework1/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Text("Name1, 15"),
              Text("Name2, 15"),
              Text("Name3, 15"),
              Text("Name4, 15"),
              Text("Name5, 15"),
              Text("Name6, 15"),
              Text("Name7, 15"),
              Text("Name8, 15"),
              Text("Name9, 15"),
              Text("Name10, 15"),
              Text("Name11, 15"),
              Text("Name12, 15"),
              Text("Name13, 15"),
              Text("Name14, 15"),
              Text("Name15, 15"),
            ],
          )),
          Center(
            child: ElevatedButton(
              child: const Text(
                'Navigate to a new screen >>',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
          ),
        ]));
  }
}
