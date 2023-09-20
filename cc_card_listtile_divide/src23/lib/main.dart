//listTile widget of the week by the flutter team.
//https://www.youtube.com/watch?v=l8dj0yPBvgQ

//cards in Material
//https://material.io/components/cards#behavior

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Card, ListTile, and Divider Widgets"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      '1625 Main Street',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    subtitle: Text('My City, CA 99984'),
                    leading: Icon(
                      Icons.restaurant_menu,
                      color: Colors.blueGrey,
                      size: 40,
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('(408) 555-1212-7777',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    leading: Icon(
                      Icons.contact_phone,
                      color: Colors.blueGrey,
                      size: 40,
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    title: Text('costa@example.com'),
                    leading: Icon(
                      Icons.contact_mail,
                      color: Colors.blueGrey,
                      size: 40,
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.blueGrey,
                    ),
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
