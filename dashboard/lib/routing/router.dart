import 'package:dashboard/pages/clients/clients.dart';
import 'package:dashboard/pages/drivers/drivers.dart';
import 'package:dashboard/pages/overview/overview.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
