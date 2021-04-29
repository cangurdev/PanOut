import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  const SubmitButton({Key key, this.text, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (bgColor == kSecondaryColor){
          print("Basıldım");
        }
      },
      child: Text(
        text,
        style: TextStyle(fontSize: getProportionateScreenHeight(22)),
      ),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minimumSize: Size(
          getProportionateScreenWidth(256),
          getProportionateScreenHeight(48),
        ),
      ),
    );
  }
}
