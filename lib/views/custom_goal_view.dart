import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/body/custom_goal_body.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';

class CustomGoal extends StatelessWidget {
  const CustomGoal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, getProportionateScreenHeight(145)),
        child: SafeArea(child: FormNavbar(title: "Hedefini Belirle")),
      ),
      bottomNavigationBar: SizedBox(
          height: getProportionateScreenHeight(64), child: BottomNavbar()),
      body: Center(
        child: CustomGoalBody(),
      ),
    );
  }
}
