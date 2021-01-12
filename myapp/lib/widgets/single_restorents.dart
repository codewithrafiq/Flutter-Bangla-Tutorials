import 'package:flutter/material.dart';
import 'package:myapp/screens/reastorent_details_screens.dart';
import 'package:myapp/widgets/sters.dart';

class SingleResrorents extends StatelessWidget {
  final String name;
  final String imagaUrl;
  final String address;
  final int rating;
  SingleResrorents({
    this.name,
    this.imagaUrl,
    this.address,
    this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 130,
      width: MediaQuery.of(context).size.width,
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RestarontDetailsScreens(name),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagaUrl,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Sters(rating),
              Text(
                address,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
