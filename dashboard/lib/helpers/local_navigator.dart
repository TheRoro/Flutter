import 'package:flutter/material.dart';
import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/routing/router.dart';
import 'package:dashboard/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
