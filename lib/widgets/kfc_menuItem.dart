import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Configuration/configuration.dart';
import '../provider/cart.dart';
import '../provider/kfc.dart';

class KFCMenuItem extends StatelessWidget {
  // final String id;
  // final String recipename;
  // final String description;
  // final int price;

  // const KFCMenuItem(
  //   this.id,
  //   this.recipename,
  //   this.description,
  //   this.price,
  // );

  @override
  Widget build(BuildContext context) {
    final menu = Provider.of<KFC>(context, listen: false);

    return InkWell(
      onTap: () {
        final menu = Provider.of<KFC>(context, listen: false);
        final cart = Provider.of<Cart>(context, listen: false);
        cart.addItem(
          menu.id,
          menu.price,
          menu.recipeName,
        );
      },
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menu.recipeName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: thirdColor,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        menu.description,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                          fontFamily: 'OpenSans',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  menu.price.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: secondaryColor,
            height: .5,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
