import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/food_home_screen.dart';
import '../screens/parcel_home_screen.dart';

class CategorySelectionScreen extends StatelessWidget {
  static const routeName = '/caregorySelection';
  Widget parcelLogo() {
    return Container(
      child: Text(
        'Parcel',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF8800ff),
                    Color(0xFF9419ff),
                    Color(0xFF9e2eff),
                    Color(0xFFa742ff),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9,
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: parcelLogo(),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        FoodHomeScreen.routeName,
                      );
                    },
                    child: foodcategoryIcon(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ParcelHomeScreen.routeName,
                      );
                    },
                    child: parcelCategoryIcon(),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget foodcategoryIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GridTile(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: Colors.deepPurple,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Icon(
                FontAwesomeIcons.pizzaSlice,
                color: Colors.white,
                size: 50,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget parcelCategoryIcon() {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      // shape: BoxShape.circle,
      color: Colors.deepPurple,
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ],
    ),
    child: Icon(
      FontAwesomeIcons.biking,
      color: Colors.white,
      size: 50,
    ),
  );
}
