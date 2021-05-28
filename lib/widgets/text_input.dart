import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';

class TextInput extends StatelessWidget {
  final String title;
  const TextInput({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: getProportionateScreenWidth(150),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
