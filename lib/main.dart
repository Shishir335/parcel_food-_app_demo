import 'package:flutter/material.dart';
import 'package:parcel_app/screens/authentication_screen.dart';
import 'package:parcel_app/screens/orders_screen.dart';
import 'package:provider/provider.dart';

import './screens/food_home_screen.dart';
import './screens/kfc_menu_screen.dart';
import './screens/category_selection_screen.dart';
import './screens/parcel_home_screen.dart';
import './provider/kfc_provider.dart';
import './provider/cart.dart';
import './screens/cart_screen.dart';
import './provider/orders.dart';

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
        ChangeNotifierProvider(
          create: (cts) => KFCs(),
        ),
        ChangeNotifierProvider(
          create: (cts) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (cts) => Orders(),
        ),
      ],
      child: MaterialApp(
        home: AuthenticationScreen(),
        routes: {
          ParcelHomeScreen.routeName: (ctx) => ParcelHomeScreen(),
          FoodHomeScreen.routeName: (ctx) => FoodHomeScreen(),
          KFCMenuScreen.routeName: (ctx) => KFCMenuScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          CategorySelectionScreen.routeName: (ctx) => CategorySelectionScreen(),
        },
      ),
    );
  }
}
