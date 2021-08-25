import 'package:dashboard/helpers/local_navigator.dart';
import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/widgets/large_screen.dart';
import 'package:dashboard/widgets/side_menu.dart';
import 'package:dashboard/widgets/top_nav.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator(),
        ),
      ),
    );
  }
}
