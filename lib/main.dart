import 'package:flutter/material.dart';

import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const HomeView(),
    );
  }
}

var lightTheme = ThemeData(
  // primaryColor: Colors.white,
  // backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    )
  ),
);
