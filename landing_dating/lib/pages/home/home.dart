import 'package:flutter/material.dart';
import 'package:landing_dating/helpers/responsive.dart';
import 'package:landing_dating/helpers/style.dart';
import 'package:landing_dating/pages/home/widgets/desktop.dart';
import 'package:landing_dating/pages/home/widgets/mobile.dart';
import 'package:landing_dating/widgets/drawer.dart';
import 'package:landing_dating/widgets/navbar_desktop.dart';
import 'package:landing_dating/widgets/navbar_mobile.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? mobileNavBar(scaffoldKey)
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: NavBar(),
              ),
        drawer: SideMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: DesktopScreen(),
          mediumScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
        ));
  }
}
