import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/screens/catagory.dart';
import 'package:wallpaper_app/views/screens/home.dart';
import 'package:wallpaper_app/views/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper App',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

