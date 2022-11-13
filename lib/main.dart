import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_page_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: const HomePage(),
      );
  }
}

