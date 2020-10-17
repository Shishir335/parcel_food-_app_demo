import 'package:flutter/material.dart';

import '../Configuration/configuration.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const CategoryItem({
    this.title,
    this.isActive = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      height: 1.7,
                    ),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 50,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              )
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: 'Home',
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'Combo Meal',
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'Special',
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'Free Delivery',
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'Chinese',
            // isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'Offers',
            // isActive: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}
