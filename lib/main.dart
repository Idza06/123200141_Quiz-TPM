import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Store',
      theme: ThemeData(
          primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
