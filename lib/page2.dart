import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Text("Brazil"),
              Text("Canada"),
              Text("China"),
              Text("France"),
              Text("Germany"),
              Text("India"),
              Text("Indonesia"),
              Text("Italy"),
              Text("Japan"),
              Text("Republic of Korea"),
              Text("Mexico"),
              Text("Russia"),
              Text("Saudi Arabia"),
              Text("South Africa"),
              Text("Türkiye"),
              Text("United Kingdom"),
              Text("United States"),
              Text("Ghana"),
              Text("Nigeria"),
              Text("Australia"),
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
