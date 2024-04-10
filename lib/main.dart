import 'package:basketball_counter_app/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

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
    return BlocProvider(create: (context) => CounterCubit(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounter(),
    ),
    );
  }
}