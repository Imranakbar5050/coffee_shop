import 'package:flutter/material.dart';
import 'package:coffee_shop/views/splashScreen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Poppins',
      ),
      home: const SplashScreen(),
    );
  }
}
