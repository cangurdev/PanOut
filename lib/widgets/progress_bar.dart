import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';

class ProgressBar extends StatelessWidget {
  final int amount;
  final String text;
  const ProgressBar({
    Key key,
    this.amount,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: getProportionateScreenWidth(250),
      decoration: BoxDecoration(
          border: Border.all(
            color: kGreenColor,
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: LinearProgressIndicator(
            backgroundColor: kBgColor,
            value: amount / 100,
            color: kGreenColor,
            minHeight: getProportionateScreenHeight(30),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          child: Text(
            amount.toString() + "/100",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ]),
    );
  }
}
