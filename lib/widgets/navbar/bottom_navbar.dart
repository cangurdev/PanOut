import 'package:flutter/material.dart';
import 'package:pan_out/core/contants/constants.dart';

import '../button/custom_icon_button.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kPrimaryColor,
      shape: CircularNotchedRectangle(),
      notchMargin: 3.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomIconButton(
            icon: Icons.house,
            route: '/',
          ),
          CustomIconButton(icon: Icons.bar_chart),
          CustomIconButton(icon: Icons.store),
          CustomIconButton(icon: Icons.person),
        ],
      ),
    );
  }
}
