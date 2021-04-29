import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';

class Fab extends StatelessWidget {
  const Fab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      backgroundColor: kIconColor,
      onPressed: () {
        Navigator.pushNamed(context, '/form');
      },
    );
  }
}
