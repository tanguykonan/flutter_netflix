import 'package:flutter/material.dart';
import 'package:flutter_netflix/pages/home_page.dart';
import 'package:flutter_netflix/pages/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),*/
      initialRoute: "/",
      routes: {
        "/": (context) => MyLoadingPage(),
        "/home": (context) => MyHomePage(),
      },
    );
  }
}

