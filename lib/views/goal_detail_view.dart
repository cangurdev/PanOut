import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/Fab.dart';
import 'package:pan_out/widgets/detail_body.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';

class GoalDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          getProportionateScreenHeight(145),
        ),
        child: SafeArea(
          child: FormNavbar(title: "Kitap Hedefleri"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Fab(),
      bottomNavigationBar: SizedBox(
        height: getProportionateScreenHeight(64),
        child: BottomNavbar(),
      ),
      body: Center(
        child: DetailBody(),
      ),
    );
  }
}
