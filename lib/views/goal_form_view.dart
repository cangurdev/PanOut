import 'package:flutter/material.dart';
import 'package:pan_out/widgets/bottom_navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/top_navbar/form_navbar.dart';

class GoalForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
          child: Column(
        children: [
          FormNavbar(
            title: "Hedefini Belirle",
          ),
        ],
      )),
    );
  }
}
