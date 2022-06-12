import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class NFTDetails extends StatelessWidget {
  const NFTDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "nftdetails",
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          color: Color(0xFFF000B29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/monkey.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                              color: Color(0xFFF181a41),
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(
                            CupertinoIcons.back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Color(0xFFF181a41),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: Color(0xFFF00B9CC),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text("Clone X  #1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Text("X TAKASHI MURAKAMI",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(".",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("24.06.2022",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2f3068),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(CupertinoIcons.star,
                            color: Colors.white, size: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.7K",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2f3068),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(CupertinoIcons.chat_bubble,
                            color: Colors.white, size: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "24",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2f3068),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(CupertinoIcons.bitcoin,
                            color: Colors.white, size: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10,5",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Contract Address:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Flexible(
                      child: Text(
                          "0xhhfxhdsfbhsdfnxgdhfnsbfbsjdfsdbfvbjsdvfbsjdfbjhsdgjfgvhj",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 17)),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5, // thickness of the line
                indent: 20, // empty space to the leading edge of divider.
                endIndent:
                    20, // empty space to the trailing edge of the divider.
                color: Colors.grey, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Token ID:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Flexible(
                      child: Text("1029",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 17)),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5, // thickness of the line
                indent: 20, // empty space to the leading edge of divider.
                endIndent:
                    20, // empty space to the trailing edge of the divider.
                color: Colors.grey, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Token Standard:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Flexible(
                      child: Text("ERC-721",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 17)),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5, // thickness of the line
                indent: 20, // empty space to the leading edge of divider.
                endIndent:
                    20, // empty space to the trailing edge of the divider.
                color: Colors.grey, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Blockchain:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 17)),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Flexible(
                      child: Text("Ethereum",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 17)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: GlassmorphicContainer(
                  height: 80,
                  width: double.infinity,
                  borderRadius: 20,
                  blur: 80,
                  alignment: Alignment.bottomCenter,
                  border: 1,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Top Bid",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20)),
                            ),
                            Row(
                              children: [
                                Icon(CupertinoIcons.bitcoin),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "10,000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFF00B9CC),
                              Color(0xFFF5D80FF),
                            ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text("Place Bid",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
