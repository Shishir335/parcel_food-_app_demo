import 'package:flutter/material.dart';

import '../Configuration/configuration.dart';

class DirectionSetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Select your location',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Set location'),
              ),
              Container(
                height: 600,
                width: double.infinity,
                color: Colors.blue,
                child: Center(
                  child: Text('Here will be the map'),
                ),
              ),
              FlatButton(
                color: primaryColor,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Serach",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
