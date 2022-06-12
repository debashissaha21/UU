import 'package:catalog_app/config/Themes/MyThemes.dart';
import 'package:catalog_app/pages/login/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog App',
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
