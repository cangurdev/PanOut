import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
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
    //List<Goal> goals = context.read<Store>().goals;
    Map<String, List<Goal>> categories = context.read<Store>().categories;

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
              itemCount: categories.length,
              itemBuilder: (context, index) {
                String category = kCategories[index];
                List<Goal> goals = categories[category];
                if (goals.length > 0) {
                  return HomeCard(
                    category: category,
                    goals: goals,
                  );
                } else {
                  return Container();
                }
              })),
    );
  }
}
