import 'package:flutter/material.dart';
import 'round_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Round Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RoundTimer(),
    );
  }
}