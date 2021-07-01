import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_room/data/moor_database.dart';
import 'package:tasks_room/ui/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) => AppDatabase(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: HomePage(),
        ));
  }
}
