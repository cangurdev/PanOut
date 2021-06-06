import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/services/database_helper.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:provider/provider.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final String route;
  const SubmitButton({Key key, this.text, this.bgColor, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DatabaseHelper db = new DatabaseHelper();
    return ElevatedButton(
      onPressed: () async {
        if (text == "Oluştur") {
          db.insertGoal(context.read<Store>().goal);
          List<Goal> a = await db.goals();
          for (var item in a) {
            print(item.toMap());
          }
          context.read<Store>().clearGoal();
          Navigator.pushNamed(context, "/home");
        } else if (bgColor == kSecondaryColor) {
          Navigator.pushNamed(context, route.toString());
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
