import 'package:basketball_counter_app/counter_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BasketballApp());
}

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PointsCounter(),
    );
  }
}