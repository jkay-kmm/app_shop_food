import 'package:app_shop_food/pages/bottomnav.dart';
import 'package:app_shop_food/pages/home.dart';
import 'package:app_shop_food/pages/login.dart';
import 'package:app_shop_food/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

