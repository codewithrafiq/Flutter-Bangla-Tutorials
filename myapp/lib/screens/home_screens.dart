import 'package:flutter/material.dart';
import 'package:myapp/data/data.dart';
import 'package:myapp/screens/cart_data_screens.dart';
import 'package:myapp/widgets/single_order.dart';
import 'package:myapp/widgets/single_restorents.dart';

class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants"),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartDataScreens(),
                ),
              );
            },
            child: Text(
              "Cart(${currentUser.cart.length})",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
                hintText: "Search Restorent or Foods",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "Recent Orders",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (ctx, i) => SingleOrder(
                food: currentUser.orders[i].food.name,
                restorent: currentUser.orders[i].restaurant.name,
                datetime: currentUser.orders[i].date,
                imageUrl: currentUser.orders[i].food.imageUrl,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "Restaurant",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: restaurants
                  .map(
                    (data) => SingleResrorents(
                      name: data.name,
                      address: data.address,
                      imagaUrl: data.imageUrl,
                      rating: data.rating,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
