import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {

  // the value we need
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;

  InfoCard({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: const Color.fromARGB(255, 95, 179, 248),
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.all(9.0), // Adjust the padding here
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.white,
            ),
            title: Text(
              text,
              textAlign: TextAlign.center, // Optional, if you want to center horizontally
              style: TextStyle(
              color: Colors.white,
              fontSize: 15, // Adjust the font size here
              fontFamily: "Source Sans Pro"),
            ),
          ),
        ),
      ),
    );
  }
}
