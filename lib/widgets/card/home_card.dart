import 'package:flutter/material.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/form_icon_button.dart';
import 'package:pan_out/widgets/progress_bar.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail");
      },
      child: Container(
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
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Günlük",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            ProgressBar(
              amount: 60,
              text: "Sayfa Sayısı",
            ),
          ]),
        ]),
      ),
    );
  }
}
