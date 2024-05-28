import 'package:ecommerce_cart/model/items.dart';
import 'package:flutter/material.dart';

class ItemController extends ChangeNotifier {
  // products for sale
  List<Items> items = [
    Items(
        name: "Item 1",
        description:
            "Description 1asdasdasdasdasdasdadfghjkjhjjhhjkkjjhhjhjkjkjjhsdasdasdsad",
        price: 100,
        image: "lib/images/1.jpg"),
    Items(
        name: "Item 2",
        description: "Description 2",
        price: 200,
        image: "lib/images/2.webp"),
    Items(
        name: "Item 3",
        description: "Description 3",
        price: 300,
        image: "lib/images/3.webp"),
  ];

  // user add products list

  List<Items> userItem = [];

  // get all items list

  List<Items> get itemList => items;

  // get users items list

  List<Items> get userItemList => userItem;

  // add items to user cart

  void addItem(Items item) {
    userItem.add(item);
    notifyListeners();
  }

  // remove items from user cart

  void removeItem(Items item) {
    userItem.remove(item);
    notifyListeners();
  }
}
