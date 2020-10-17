import 'package:flutter/material.dart';

import '../widgets/tab_menu.dart';
import '../Configuration/configuration.dart';
import '../widgets/search_box.dart';
import '../screens/kfc_menu_screen.dart';

class FoodHomeScreen extends StatelessWidget {
  static const routeName = '/foodHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: new IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Food',
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Hub',
              style: new TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBox(
                onChanged: (value) {},
              ),
              CategoryList(),
              ResturentCard(
                image: 'assets/images/burger.jpg',
                resturentNmae: 'KFC',
                description: 'Best Quality FastFood in the World',
                press: () {
                  Navigator.of(context).pushNamed(KFCMenuScreen.routeName);
                },
              ),
              ResturentCard(
                image: 'assets/images/biriany.webp',
                resturentNmae: 'Shahi Dekchi',
                description: 'If You want Indian, Try Us',
                press: () {},
              ),
              ResturentCard(
                image: 'assets/images/BBQ chicken.jpg',
                resturentNmae: 'Rustic Eatery',
                description: 'We Produce BBQ',
                press: () {},
              ),
              ResturentCard(
                image: 'assets/images/noodols.png',
                resturentNmae: 'XinXian',
                description: 'Quality Chinese will End Your Hunger',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResturentCard extends StatelessWidget {
  final String image;
  final String resturentNmae;
  final String description;
  final Function press;

  ResturentCard({
    this.image,
    this.resturentNmae,
    this.description,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
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
            Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 12, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      resturentNmae,
                      style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
