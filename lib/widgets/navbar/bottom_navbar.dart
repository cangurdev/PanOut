import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CustomIconButton(
            icon: Icons.house,
            route: '/home',
          ),
          CustomIconButton(icon: Icons.bar_chart),
        ],
      ),
    );
  }
}
