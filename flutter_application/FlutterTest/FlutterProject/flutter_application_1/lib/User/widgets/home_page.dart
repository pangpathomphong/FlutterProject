import 'package:flutter/material.dart';
import 'info_card.dart';

class HomePage extends StatelessWidget {

  // Define user information constants
  static const String user = "Apichai MATT";
  static const String email = "apichaiyesfam123@gmail.com";
  static const String phone = "0-123-456-789";
  static const String location = "Bangkok, Thailand";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/Pang.jpg'),
            ),
            Text(
              user, // Use user constant
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Inter"),
            ),
            Text(
              "User Information",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
              ),
            ),
            InfoCard(text: user, icon: Icons.supervised_user_circle_rounded, onPressed: () async {}),
            InfoCard(text: location, icon: Icons.location_city, onPressed: () async {}),
            InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
          ],
        ),
      ),
    );
  }
}
