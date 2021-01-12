import 'package:flutter/material.dart';

class SingleCart extends StatelessWidget {
  final String foodName;
  final String restorentName;
  final double foodPrice;
  final int quantity;
  final String imageUrl;
  SingleCart({
    this.foodName,
    this.foodPrice,
    this.restorentName,
    this.quantity,
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                foodName,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 3),
              Text(
                restorentName,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 3),
              Container(
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Expanded(
                  child: Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(quantity.toString()),
                        GestureDetector(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              foodPrice.toString(),
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
