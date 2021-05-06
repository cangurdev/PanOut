import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';

class FormIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  const FormIconButton({Key key, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: getProportionateScreenHeight(64),
    );
  }
}
