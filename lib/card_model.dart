import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // [itemName , itemPrice , itemPath , color]
    ["Apple", "100.00", "lib/icon/apple.png", Colors.green],
    ["Banana", "60.00", "lib/icon/banana.png", Colors.yellow],
    ["Mango", "40.00", "lib/icon/mango.png", Colors.orange],
    ["Grapes", "40.00", "lib/icon/grapes.png", Colors.lightGreen],
    ["Chips", "25.00", "lib/icon/chips.png", Colors.purple],
    ["Coke", "30.00", "lib/icon/cocacola.png", Colors.lightGreen],
    ["Water Bottel", "20.00", "lib/icon/water.png", Colors.lightGreen],
    ["Juice", "40.00", "lib/icon/drink.png", Colors.blue],
    ["IceCream", "20.00", "lib/icon/icecream.png", Colors.green],
    ["Peanuts", "25.00", "lib/icon/peanut.png", Colors.orange],
    ["Sugar", "45.00", "lib/icon/sugar.png", Colors.purple],
    ["Chocolate", "40.00", "lib/icon/chocolate.png", Colors.pink],
    ["Candy", "10.00", "lib/icon/candy.png", Colors.red],
    ["Pizza", "120.00", "lib/icon/pizza.png", Colors.yellow],
  ];

  // list of caart_items

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
