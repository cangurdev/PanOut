import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/card/category_card.dart';
import 'package:pan_out/widgets/button/submit_button.dart';

class FormBody extends StatefulWidget {
  @override
  _FormBodyState createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  int activeKey = -1;
  String category = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getProportionateScreenWidth(305),
        height: getProportionateScreenHeight(530),
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: kGrayColor,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Center(
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int i) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            activeKey = i;
                            category = "ders";
                          });
                        },
                        child: CategoryCard(
                          id: i,
                          bgColor: activeKey == i ? kIconColor : kBgColor,
                          iconColor: activeKey == i ? kBgColor : kIconColor,
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 4),
            Expanded(
              flex: 0,
              child: SubmitButton(
                  text: "Devam Et",
                  category: category,
                  bgColor: activeKey != -1 ? kSecondaryColor : Colors.grey),
            )
          ],
        ));
  }
}
