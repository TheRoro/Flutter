import 'package:flutter/material.dart';

final int smallScreenWidth = 852;
final int largeScreenWidth = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenWidth;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= smallScreenWidth &&
        MediaQuery.of(context).size.width <= largeScreenWidth;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenWidth) {
        return largeScreen;
      } else if (maxWidth >= smallScreenWidth && maxWidth <= largeScreenWidth) {
        return mediumScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
