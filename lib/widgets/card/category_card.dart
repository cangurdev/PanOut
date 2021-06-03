import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/form_icon_button.dart';

class CategoryCard extends StatefulWidget {
  final Color bgColor;
  final Color iconColor;
  final int id;
  final String category;
  final IconData icon;
  const CategoryCard({
    Key key,
    this.bgColor,
    this.id,
    this.iconColor,
    this.category,
    this.icon,
  }) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  int activeKey = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(120),
      height: getProportionateScreenHeight(120),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: widget.bgColor,
      ),
      child: Column(
        children: [
          FormIconButton(
            icon: widget.icon,
            color: widget.iconColor,
          ),
          Text(
           widget.category,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
