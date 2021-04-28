import 'package:flutter/material.dart';
import 'package:pan_out/core/contants/constants.dart';
import 'package:pan_out/widgets/form_icon_button.dart';

class FormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 500,
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
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Devam Et",
                style: TextStyle(fontSize: 22),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
                  minimumSize: MaterialStateProperty.all<Size>(Size(256, 48))))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
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
