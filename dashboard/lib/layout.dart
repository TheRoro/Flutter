import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/widgets/large_screen.dart';
import 'package:dashboard/widgets/small_screen.dart';
import 'package:dashboard/widgets/top_nav.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
    );
  }
}
