import 'package:flutter/material.dart';

import 'MyStartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenApp',
      debugShowCheckedModeBanner: false,
      home: const MyStartPage(),
    );
  }
}
