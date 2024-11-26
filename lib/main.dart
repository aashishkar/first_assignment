import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/arithmetic.dart';
import 'package:first_assignment/view/dashboard.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardScreen(),
        '/arithmetic': (context) => ArithmeticScreen(),
        '/area_of_circle': (context) => AreaOfCircleScreen(),
        '/simple_interest': (context) => SimpleInterestScreen(),
      },
    );
  }
}
