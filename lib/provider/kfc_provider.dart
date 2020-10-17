import 'package:flutter/material.dart';

import 'kfc.dart';

class KFCs with ChangeNotifier {
  List<KFC> _items = [
    KFC(
      id: 'k1',
      recipeName: 'Burger',
      description: 'Double Patty Burger',
      price: 260,
    ),
    KFC(
      id: 'k2',
      recipeName: 'Pizza',
      description: 'Cheese Pizza',
      price: 850,
    ),
    KFC(
      id: 'k3',
      recipeName: 'Chicken Fry',
      description: 'Crispy chiken fry, 2 pices',
      price: 240,
    ),
    KFC(
      id: 'k4',
      recipeName: 'Chicken Wings',
      description: 'Crispy chicken wings, 4 pices',
      price: 220,
    ),
    KFC(
      id: 'k5',
      recipeName: 'Chicken Drumstick',
      description: 'Special',
      price: 650,
    ),
    KFC(
      id: 'k6',
      recipeName: 'Drinks',
      description: 'Cocacola, 7up, Mounten Diew, Pepsi',
      price: 260,
    ),
  ];

  List<KFC> get items {
    return [..._items];
  }

  addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  KFC findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
