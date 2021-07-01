import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';

class ProgressBar extends StatelessWidget {
  final int amount;
  final String text;
  final int current;
  const ProgressBar({
    Key key,
    this.amount,
    this.text,
    this.current,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: getProportionateScreenWidth(210),
      decoration: BoxDecoration(
          border: Border.all(
            color: kGreenColor,
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Stack(alignment: Alignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: LinearProgressIndicator(
            backgroundColor: kBgColor,
            value: current / amount,
            color: kGreenColor,
            minHeight: getProportionateScreenHeight(35),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          child: Text(
            "$current/$amount",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
