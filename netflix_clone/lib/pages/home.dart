import 'package:flutter/material.dart';
import 'package:netflix_clone/components/main_poster.dart';
import 'package:netflix_clone/components/rounded_item.dart';
import 'package:netflix_clone/components/panel_item.dart';

class HomePage extends StatelessWidget {
  final List data = [
    'assets/img/rick_poster.jpg',
    'assets/img/dark_poster.png',
    'assets/img/blackmirror_poster.jpg',
    'assets/img/bojack_poster.jpg',
    'assets/img/umbrella_poster.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            MainPoster(img: data[0]),
            horizontalList2('My list', RoundedItem(img: data[1]), 10),
            SizedBox(
              height: 10.0,
            ),
            horizontalList2('Watch it again', new PanelItem(img: data[2]), 10),
            SizedBox(
              height: 10.0,
            ),
            horizontalList2('Trending Now', new PanelItem(img: data[3]), 10),
            SizedBox(
              height: 10.0,
            ),
            horizontalList2(
                'Netflix Originals', new PanelItem(img: data[4]), 10)
          ],
        ),
        bottomNavigationBar: navBar(),
      ),
    );
  }

  BottomNavigationBar navBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline_outlined),
            label: 'Coming Soon',
          ),
        ]);
  }

  Widget horizontalList2(String title, Widget item, int quantity) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
            height: 110.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: quantity,
                itemBuilder: (context, index) {
                  return item;
                }))
      ],
    );
  }
}
