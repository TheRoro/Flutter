import 'package:flutter/material.dart';

class PanelItem extends StatelessWidget {
  PanelItem({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          img,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
