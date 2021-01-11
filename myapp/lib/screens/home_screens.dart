import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screens"),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/foodimage.jpg',
              width: 150,
              height: 300,
            ),
          ),
          Text(
            "Hello World",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Click me"),
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
