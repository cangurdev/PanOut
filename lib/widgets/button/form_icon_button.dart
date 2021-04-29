import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';

class FormIconButton extends StatelessWidget {
  final IconData icon;
  const FormIconButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: kIconColor,
      size: getProportionateScreenHeight(64),
    );
  }
}
