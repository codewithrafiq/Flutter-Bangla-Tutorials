import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';

// Food
final _food_1 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 1', price: 55.99);
final _food_2 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 2', price: 44.99);
final _food_3 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 3', price: 33.99);
final _food_4 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 4', price: 45.99);
final _food_5 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 5', price: 75.99);
final _food_6 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 6', price: 76.99);
final _food_7 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 7', price: 54.99);
final _food_8 =
    Food(imageUrl: 'assets/foodimage.jpg', name: 'Food 8', price: 45.99);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/restaurant0.jpg',
  name: 'Restaurant 0',
  address: '3500, cumilla,Bangladesh',
  rating: 5,
  menu: [
    _food_1,
    _food_2,
    _food_3,
    _food_4,
    _food_5,
    _food_6,
    _food_7,
    _food_8
  ],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/restaurant1.jpg',
  name: 'Restaurant 1',
  address: '3500, cumilla,Bangladesh',
  rating: 4,
  menu: [_food_2, _food_3, _food_4, _food_5, _food_6, _food_7],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/restaurant2.jpg',
  name: 'Restaurant 2',
  address: '3500, cumilla,Bangladesh',
  rating: 4,
  menu: [_food_2, _food_3, _food_5, _food_6, _food_7, _food_8],
);
final _restaurant3 = Restaurant(
  imageUrl: 'assets/restaurant3.jpg',
  name: 'Restaurant 3',
  address: '3500, cumilla,Bangladesh',
  rating: 2,
  menu: [_food_1, _food_2, _food_6, _food_7, _food_8],
);
final _restaurant4 = Restaurant(
  imageUrl: 'assets/restaurant4.jpg',
  name: 'Restaurant 4',
  address: '3500, cumilla,Bangladesh',
  rating: 3,
  menu: [_food_1, _food_4, _food_5, _food_8],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2020',
      food: _food_2,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2020',
      food: _food_4,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2020',
      food: _food_1,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2020',
      food: _food_8,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2020',
      food: _food_5,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2020',
      food: _food_6,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2020',
      food: _food_3,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2020',
      food: _food_8,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2020',
      food: _food_5,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2020',
      food: _food_1,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
