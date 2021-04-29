import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/form_body.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';

class GoalForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
          height: getProportionateScreenHeight(64), child: BottomNavbar()),
      body: SafeArea(
          child: Column(
        children: [
          FormNavbar(
            title: "Hedefini Belirle",
          ),
          FormBody()
        ],
      )),
    );
  }
}
