import 'package:flutter/material.dart';
import 'package:flutter_news/view/home.dart';
import 'view/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash = true;
  loadHome() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterNews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showingSplash ? const SplashScreen() : const HomeScreen(),
    );
  }
}
