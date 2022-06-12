import 'dart:ui';

import 'package:catalog_app/pages/login/PhoneAuth.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF010a2b),
          ),
          child: GlassmorphicContainer(
            width: double.infinity,
            height: double.infinity,
            borderRadius: 0,
            blur: 10,
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
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hello!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "We are UU.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Create an account or login to begin adventure.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhoneAuth()),
                      );
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 20),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/smartphone.png",
                              width: 20,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Continue with Phone",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "assets/images/facebook.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
