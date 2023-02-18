import 'package:flutter/material.dart';
import 'package:velvet_room/beds_screen.dart';
import 'package:velvet_room/chatgpt_screen.dart';
import 'package:velvet_room/dark%20_and_light_them.dart';
import 'package:velvet_room/home_screen.dart';
import 'package:velvet_room/onboarding_screen.dart';

import 'cart_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}