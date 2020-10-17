import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';
import '../Configuration/configuration.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String recipeId;
  final int price;
  final int quantity;
  final String title;

  const CartItem(
    this.id,
    this.recipeId,
    this.price,
    this.quantity,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(recipeId);
      },
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: FittedBox(child: Text('TK$price')),
              ),
            ),
            title: Text(title),
            subtitle: Text('Total: ${(price * quantity)}TK'),
            trailing: Text('$quantity x'),
          ),
        ),
      ),
    );
  }
}
