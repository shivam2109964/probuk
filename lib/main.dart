import 'package:flutter/material.dart';
import 'package:probuk/First Event/OnBoardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Strive",
        home: OnBoardingScreen());
  }
}
