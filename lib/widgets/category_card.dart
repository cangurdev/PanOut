import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/form_icon_button.dart';
import 'package:pan_out/core/contants/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(120),
      height: getProportionateScreenHeight(120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: kBgColor,
      ),
      child: Column(
        children: [
          FormIconButton(
            icon: Icons.book,
            route: '/',
          ),
          Text(
            "Ders",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
