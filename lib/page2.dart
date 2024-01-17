import 'package:flutter/material.dart';
import 'package:homework1/main.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> countries = ["Brazil", "Canada","China","France", "Germany", "India", "Indonesia", "Itealy", "Japan", "Korea"];
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView.builder(
    itemCount: countries.length,
    itemBuilder: (BuildContext ctxt, int index) {
      
     return ListTile(
      title: new Text(countries[index]),
    
     );
    }  
    ),
      
        ), 
         ElevatedButton(
              child: const Text(
                'Navigate back>>',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
        ]
         )   
             );
  }
  }
