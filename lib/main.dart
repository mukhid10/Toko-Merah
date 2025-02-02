import 'package:flutter/material.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        '/' : (context) => const HomePage(),
        'cartPage' : (context) => CartPage()
      },
    );
  }
  
}

