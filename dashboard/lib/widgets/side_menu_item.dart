import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/widgets/horizontal_menu_item.dart';
import 'package:dashboard/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMediumScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
