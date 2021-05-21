import 'package:flutter/material.dart';

class RoundedItem extends StatelessWidget {
  RoundedItem({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(alignment: AlignmentDirectional.bottomCenter, children: <Widget>[
          Container(
            height: 110.0,
            width: 110.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(color: Colors.white)),
            child: ClipOval(
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.asset('assets/img/dark.png', width: 100.0)
        ]),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
