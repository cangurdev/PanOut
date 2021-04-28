import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  const SubmitButton({
    Key key, this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 22),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
            minimumSize: MaterialStateProperty.all<Size>(Size(256, 48))));
  }
}
