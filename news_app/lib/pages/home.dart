import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.red,
          );
        }),
      ),
    );
  }
}
