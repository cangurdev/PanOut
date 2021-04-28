import 'package:flutter/material.dart';
import 'package:pan_out/core/contants/constants.dart';
import 'package:pan_out/theme/size_config.dart';

class FormIconButton extends StatelessWidget {
  final IconData icon;
  final String route;
  const FormIconButton({Key key, this.icon, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: kIconColor,
      iconSize: getProportionateScreenHeight(64),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
