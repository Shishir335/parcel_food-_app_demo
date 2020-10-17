import 'package:flutter/material.dart';

import '../Configuration/configuration.dart';
import './direction_set_screen.dart';
import '../widgets/main_drawer.dart';

class ParcelHomeScreen extends StatelessWidget {
  static const routeName = '/parcel-home-screen';
  final primaryColor = Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Parcel'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                    'assets/images/delivery-man-on-a-bike-vector-67476561.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 10,
              width: double.infinity,
            ),
            Container(
              child: Text(
                'Select the parcel type...',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Container(
              height: 10,
              width: double.infinity,
            ),
            Container(
              child: Column(
                children: [
                  ParcelListTile(
                    icon: Icons.developer_board,
                    type: 'Electronics',
                    description: 'Safely Wrapped, Comment if fragile',
                  ),
                  ParcelListTile(
                    icon: Icons.shopping_basket,
                    type: 'Accessories',
                    description: 'Fashion and clothings',
                  ),
                  ParcelListTile(
                    icon: Icons.card_giftcard,
                    type: 'Gifts',
                    description: 'Flowers, card and chocolates',
                  ),
                  ParcelListTile(
                    icon: Icons.folder_open,
                    type: 'Documents',
                    description: 'No passport or bank checks',
                  ),
                  ParcelListTile(
                    icon: Icons.local_pizza,
                    type: 'Food',
                    description: 'Home made food, snacks',
                  ),
                  ParcelListTile(
                    icon: Icons.ac_unit,
                    type: 'Parishable',
                    description: 'Rotable thins like fruits, vegitables',
                  ),
                  ParcelListTile(
                    icon: Icons.directions_bike,
                    type: 'Package',
                    description: 'Non Parishable things',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParcelListTile extends StatelessWidget {
  final IconData icon;
  final String type;
  final String description;

  ParcelListTile({
    this.icon,
    this.type,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.deepPurple,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => DirectionSetScreen(),
          ),
        );
      },
    );
  }
}
