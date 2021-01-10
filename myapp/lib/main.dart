import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Card(
            color: Colors.yellow,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text("Hello World"),
            ),
          ),
        ),
      ),
    );
  }
}
