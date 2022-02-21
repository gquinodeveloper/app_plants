import 'package:flutter/material.dart';
import 'package:g58_appdesign/screens/detail/detail_screen.dart';
import 'package:g58_appdesign/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      //home: const DetailScreen(),
    );
  }
}
