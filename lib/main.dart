import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/food_home_screen.dart';
import './screens/kfc_menu_screen.dart';
import './screens/category_selection_screen.dart';
import './screens/parcel_home_screen.dart';
import './provider/kfc_provider.dart';
import './provider/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: KFCs(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        home: CategorySelectionScreen(),
        routes: {
          ParcelHomeScreen.routeName: (ctx) => ParcelHomeScreen(),
          FoodHomeScreen.routeName: (ctx) => FoodHomeScreen(),
          KFCMenuScreen.routeName: (ctx) => KFCMenuScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
