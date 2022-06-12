import 'package:carousel_slider/carousel_slider.dart';
import 'package:catalog_app/pages/home/NFTDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 440.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
              child: Hero(
                tag: "nftdetails$i",
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NFTDetails()));
                  },
                  child: GlassmorphicContainer(
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
                          Color(0xFFF181a41),
                          Color(0xFFF181a41),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/monkey.jpg'),
                                      fit: BoxFit.cover)),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.35,
                              child: null),
                        ),
                        Text("NFT Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "SELLER NAME",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              ".",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "24.06.2022",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 30,
                              margin:
                                  EdgeInsets.only(left: 5, right: 5, top: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2f3068),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(CupertinoIcons.star,
                                      color: Colors.white, size: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("1.7K")
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 30,
                              margin: EdgeInsets.only(right: 5, top: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2f3068),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(CupertinoIcons.chat_bubble,
                                      color: Colors.white, size: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("24")
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 30,
                              margin: EdgeInsets.only(right: 5, top: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2f3068),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(CupertinoIcons.bitcoin,
                                      color: Colors.white, size: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("10,5")
                                ],
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 5, top: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF000B29),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xFFF00B9CC),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
