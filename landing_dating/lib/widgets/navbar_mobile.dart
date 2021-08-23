import 'package:flutter/material.dart';
import 'package:landing_dating/helpers/style.dart';

PreferredSizeWidget mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: active,
        ),
        onPressed: () {
          key.currentState!.openDrawer();
        },
      ),
      backgroundColor: Colors.transparent,
      title: Image.asset('assets/images/logo.png'),
      centerTitle: true,
      elevation: 0,
    );
