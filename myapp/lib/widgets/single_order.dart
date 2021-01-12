import 'package:flutter/material.dart';

class SingleOrder extends StatelessWidget {
  final String food;
  final String restorent;
  final String imageUrl;
  final String datetime;
  SingleOrder({
    this.food,
    this.restorent,
    this.imageUrl,
    this.datetime,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 90,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.greenAccent.withOpacity(0.2),
            spreadRadius: 1.4,
            blurRadius: 1.4,
            offset: Offset(0, 2),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                restorent,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                datetime,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Spacer(),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.greenAccent,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
