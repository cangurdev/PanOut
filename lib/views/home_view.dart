import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:provider/provider.dart';

//import widgets
import 'package:pan_out/widgets/button/Fab.dart';
import 'package:pan_out/widgets/card/home_card.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/home_navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Goal> goals = context.read<Store>().goals;
    print(goals.length);
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, getProportionateScreenHeight(145)),
        child: SafeArea(child: HomeNavbar()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Fab(),
      bottomNavigationBar: SizedBox(
          height: getProportionateScreenHeight(64), child: BottomNavbar()),
      body: SafeArea(
          child: ListView.builder(
              itemCount: goals.length,
              itemBuilder: (context, index) {
                Goal goal = goals[index];
                return HomeCard(
                  amount: goal.amount,
                  barText: goal.type,
                  category: goal.category,
                  frequency: goal.frequency,
                );
              })),
    );
  }
}
