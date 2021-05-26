import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/form_icon_button.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: kGrayColor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        FormIconButton(
          icon: Icons.book,
          color: kIconColor,
        ),
        Text(
          "Kitap",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Günlük",
          style: TextStyle(color: Colors.white),
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          height: getProportionateScreenHeight(30),
          width: getProportionateScreenWidth(250),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kGreenColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child:
                    Text("Sayfa Sayısı", style: TextStyle(color: Colors.white)),
              ),
              Text("100%", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ]),
    );
  }
}
