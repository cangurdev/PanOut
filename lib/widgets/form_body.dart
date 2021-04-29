import 'package:flutter/material.dart';
import 'package:pan_out/core/contants/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/category_card.dart';
import 'package:pan_out/widgets/button/submit_button.dart';

class FormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(305),
      height: getProportionateScreenHeight(500),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: kGrayColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(),
              CategoryCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(),
              CategoryCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(),
              CategoryCard(),
            ],
          ),
          SubmitButton(text: "Devam Et"),
        ],
      ),
    );
  }
}
