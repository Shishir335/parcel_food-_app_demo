import 'package:flutter/material.dart';
import 'package:parcel_app/Configuration/configuration.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart' show Cart;
import '../widgets/cart_item.dart';
import '../provider/orders.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cart',
          style: TextStyle(
            color: primaryColor,
            fontFamily: 'Pacifico',
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 17,
                  right: 17,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tatal',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Chip(
                          label: Text(
                            '${cart.totalAmount}TK',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .primaryTextTheme
                                  .headline6
                                  .color,
                            ),
                          ),
                          backgroundColor: primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: FlatButton(
                            child: Text('ORDER NOW'),
                            onPressed: () {
                              Provider.of<Orders>(context, listen: false)
                                  .addOrder(
                                cart.items.values.toList(),
                                cart.totalAmount,
                              );
                              cart.clearCart();
                            },
                            textColor: Colors.white,
                            color: Colors.green,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartItem(
                  cart.items.values.toList()[i].id,
                  cart.items.keys.toList()[i],
                  cart.items.values.toList()[i].price,
                  cart.items.values.toList()[i].quantity,
                  cart.items.values.toList()[i].title,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
