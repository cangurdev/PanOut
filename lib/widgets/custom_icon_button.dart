import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String route;
  const CustomIconButton({Key key, this.icon, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: Colors.white,
      iconSize: 32,
      padding: EdgeInsets.symmetric(horizontal: 16),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
