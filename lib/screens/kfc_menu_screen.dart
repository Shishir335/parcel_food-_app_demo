import 'package:flutter/material.dart';
import 'package:parcel_app/widgets/main_drawer.dart';
import 'package:provider/provider.dart';

import '../screens/cart_screen.dart';
import '../widgets/kfc_menuItem.dart';
import '../provider/cart.dart';
import '../provider/kfc_provider.dart';
import '../Configuration/configuration.dart';
import '../widgets/cart_badge.dart';

class KFCMenuScreen extends StatelessWidget {
  static const routeName = '/kfcMenu';
  @override
  Widget build(BuildContext context) {
    final menuData = Provider.of<KFCs>(context);
    final menus = menuData.items;
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        iconTheme: new IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'KFC',
              style: new TextStyle(
                color: primaryColor,
                // fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            ),
            Consumer<Cart>(
              builder: (_, cart, ch) =>
                  CartBadge(child: ch, value: cart.itemCount.toString()),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/images/burger.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: secondaryColor.withOpacity(1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: menus[i],
                child: KFCMenuItem(
                    // menus[i].id,
                    // menus[i].recipeName,
                    // menus[i].description,
                    // menus[i].price,
                    ),
              ),
              itemCount: menus.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 15 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
