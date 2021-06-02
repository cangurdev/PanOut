import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/body/form_body.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';

class GoalForm extends StatefulWidget {
  @override
  _GoalFormState createState() => _GoalFormState();
}

class _GoalFormState extends State<GoalForm> {
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
        child: FormBody(),
      ),
    );
  }
}
