import 'package:flutter/foundation.dart';

class KFC with ChangeNotifier {
  final String id;
  final String recipeName;
  final String description;
  final int price;

  KFC({
    this.id,
    this.recipeName,
    this.description,
    this.price,
  });
}
