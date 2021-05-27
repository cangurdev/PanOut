import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';
import 'package:pan_out/widgets/type_form_body.dart';

class GoalTypeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(double.infinity, getProportionateScreenHeight(145)),
          child: SafeArea(child: FormNavbar(title: "Hedef Türünü Belirle")),
        ),
        bottomNavigationBar: SizedBox(
            height: getProportionateScreenHeight(64), child: BottomNavbar()),
        body: Center(
          child: TypeFormBody(),
        ));
  }
}
