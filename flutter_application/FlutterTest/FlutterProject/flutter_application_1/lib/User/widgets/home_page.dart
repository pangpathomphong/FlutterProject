import 'package:flutter/material.dart';
import 'info_card.dart';

class HomePage extends StatelessWidget {
  
  // Define user information constants
  static const String user = "John Doe";
  static const String email = "johndoe@example.com";
  static const String phone = "+1 (555) 123-4567";
  static const String location = "New York City, NY, USA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 120),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/Pang.jpg'),
            ),
            Text(
              user, // Use user constant
              style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico"),
            ),
            Text(
              "User Information",
              style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey[200],
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              fontFamily: "Source Sans Pro",
              ),
            ),
            InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
            InfoCard(
              text: user,
              icon: Icons.supervised_user_circle_rounded,
              onPressed: () async {}),
            InfoCard(
              text: location,
              icon: Icons.location_city,
              onPressed: () async {}),
            InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
          ],
        ),
      ),
    );
  }
}
