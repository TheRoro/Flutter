import 'package:flutter/material.dart';
import 'package:netflix_clone/components/upper_navbar.dart';

class MainPoster extends StatelessWidget {
  MainPoster({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.topImage(img),
        this.seriesTags(),
        this.buttonsRow()
      ],
    );
  }

  Widget topImage(String img) {
    return Stack(
      children: <Widget>[
        Image.asset(img, width: 420.0, height: 450.0, fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 450.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(child: UpperNavbar())
      ],
    );
  }

  Widget seriesTags() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Mysteries',
          style: TextStyle(color: Colors.white70, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'Sci-fi',
          style: TextStyle(color: Colors.white70, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'Thriller',
          style: TextStyle(color: Colors.white70, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'Dramas',
          style: TextStyle(color: Colors.white70, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget buttonsRow() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.check, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'My List',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,
                onSurface: Colors.grey,
                padding:
                    EdgeInsets.only(right: 25, left: 15, top: 7, bottom: 7),
                side: BorderSide(color: Colors.white, width: 1),
              ),
              icon: Icon(Icons.play_arrow, color: Colors.white),
              label: Text(
                'Play',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Column(
              children: <Widget>[
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Info',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ));
  }
}
