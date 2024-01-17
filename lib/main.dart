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
    var names = {
  // Key:    Value
  'Teenager 1': '15',
  'Teenager 2': '16',
  'Teenager 3': '17 ',
  'Teenager 4': '15',
  'Teenager 5': '16',
  'Teenager 6': '17 ',
  'Teenager 7': '15',
  'Teenager 8': '16',
  'Teenager 9': '17 ',
  'Teenager 10': '15',
  'Teenager 11': '16',
  'Teenager 12': '17 ',
  'Teenager 13': '15',
  'Teenager 14': '16',
  'Teenager 15': '17 '
  
};
      List<String> litems = ["1","2","Third","4"];
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView.builder(
    itemCount: names.length,
    itemBuilder: (BuildContext ctxt, int index) {
       String key = names.keys.elementAt(index);
     return ListTile(
      title: new Text("$key"),
      subtitle: new Text("${names[key]}"),
     );
    }  ),), ElevatedButton(
              child: const Text(
                'Navigate to a new screen >>',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
       
        ], 
        )
        );
  }
}
