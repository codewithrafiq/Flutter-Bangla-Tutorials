import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  String title = '';
  List<String> inputdatas = [
    "test title 1",
    "test title 2",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "$number",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            RaisedButton(
              child: Text("Update"),
              onPressed: () {
                setState(() {
                  number++;
                });
                print(number);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onChanged: (v) {
                  setState(() {
                    title = v;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Title",
                  helperText: "Title",
                ),
              ),
            ),
            FlatButton(
              child: Text("Add todo"),
              onPressed: () {
                setState(() {
                  inputdatas.insert(0, title);
                });
              },
              color: Colors.red,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: inputdatas.length,
                itemBuilder: (ctx, i) => Text("${inputdatas[i]}"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
