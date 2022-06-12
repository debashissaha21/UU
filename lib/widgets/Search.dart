import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: double.infinity,
        height: 50,
        borderRadius: 10,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "Search by NFT",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ));
  }
}
