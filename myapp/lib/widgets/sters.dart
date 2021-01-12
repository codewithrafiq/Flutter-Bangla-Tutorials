import 'package:flutter/material.dart';

class Sters extends StatelessWidget {
  final int rating;
  Sters(this.rating);
  @override
  Widget build(BuildContext context) {
    String ster = '';
    for (var i = 0; i < rating; i++) {
      ster += '⭐ ';
    }
    return Text(
      ster,
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
