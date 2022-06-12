import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      height: 80,
      width: double.infinity,
      borderRadius: 40,
      blur: 80,
      alignment: Alignment.bottomCenter,
      border: 0,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(0, 1, 10, 43),
            Color.fromARGB(0, 255, 255, 255),
          ],
          stops: [
            0.3,
            1,
          ]),
      borderGradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            const Color(0xFF4579C5).withAlpha(100),
            const Color(0xFFFFFFF).withAlpha(55),
            const Color(0xFFF75035).withAlpha(10),
          ],
          stops: [
            0.06,
            0.95,
            1
          ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.app_badge,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.cart,
                color: Colors.white,
                size: 35,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFF00B9CC),
                  Color(0xFFF5D80FF),
                ]),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.money_dollar,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
