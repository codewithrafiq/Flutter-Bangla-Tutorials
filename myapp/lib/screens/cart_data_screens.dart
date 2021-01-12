import 'package:flutter/material.dart';
import 'package:myapp/data/data.dart';
import 'package:myapp/widgets/single_cart.dart';

class CartDataScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart(${currentUser.cart.length})"),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (ctx, i) {
          return Divider(height: 1, color: Colors.grey);
        },
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (ctx, i) {
          if (i < currentUser.cart.length) {
            return SingleCart(
              foodName: currentUser.cart[i].food.name,
              foodPrice: currentUser.cart[i].food.price,
              restorentName: currentUser.cart[i].restaurant.name,
              quantity: currentUser.cart[i].quantity,
              imageUrl: currentUser.cart[i].food.imageUrl,
            );
          }
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Time :",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "2.3h",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Cost :",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          "\$400",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
            ],
          );
        },
      ),
      bottomSheet: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 80,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Text(
              "Order Now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
