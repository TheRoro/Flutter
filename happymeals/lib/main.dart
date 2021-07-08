import 'package:flutter/material.dart';
import 'package:happymeals/pages/meals_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HappyMeals',
      home: MealsList(),
    );
  }
}
