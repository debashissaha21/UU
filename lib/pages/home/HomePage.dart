import '../../widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF010a2b),
          ),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                const Header(),
                const SizedBox(
                  height: 30,
                ),
                const Search(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "Popular NFTs",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                const Carousel(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                BottomNavigation()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
