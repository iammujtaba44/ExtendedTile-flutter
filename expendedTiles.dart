import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Trial"),
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ExpansionTile(
              title: Text("for expension Level 1"),
              children: <Widget>[
                ExpansionTile(
                  title: Text("Level 2 and child of level 1"),
                  children: <Widget>[
                    ListTile(
                      title: Text("Child 1 of level 2"),
                    )
                  ],
                ),
                ListTile(
                  title: Text("Child 2 of level 1"),
                ),
                ListTile(
                  title: Text("Child 3 of level 1"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
