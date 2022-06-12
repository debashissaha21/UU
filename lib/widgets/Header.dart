import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 70,
            height: 70,
            child: CircleAvatar(
              backgroundImage: const Image(
                image: AssetImage('assets/images/monkey.jpg'),
                fit: BoxFit.cover,
              ).image,
            ),
          ),
        ),
        Column(
          children: const [
            Text(
              "Username",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Text(
              "Creator",
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
        Container(
          child: GlassmorphicContainer(
            width: 70,
            height: 70,
            borderRadius: 50,
            blur: 20,
            alignment: Alignment.topRight,
            border: 2,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFffffff).withOpacity(0.1),
                  Color(0xFFFFFFFF).withOpacity(0.05),
                ],
                stops: const [
                  0.1,
                  1,
                ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.5),
                Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.notification_important),
                iconSize: 30,
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
