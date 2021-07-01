import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/body/statistics_body.dart';
import 'package:pan_out/widgets/button/Fab.dart';
import 'package:pan_out/widgets/navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/navbar/form_navbar.dart';
import 'package:provider/provider.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, List<Goal>> categories = context.read<Store>().categories;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, getProportionateScreenHeight(145)),
        child: SafeArea(child: FormNavbar(title: "İstatistikler")),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Fab(),
      bottomNavigationBar: SizedBox(
        height: getProportionateScreenHeight(64),
        child: BottomNavbar(),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                String category = kCategories[index];
                List<Goal> goals = categories[category];
                if (goals.length > 0) {
                  return Column(
                    children: [
                      StatisticsBody(
                        category: category,
                        goals: goals,
                        icon: kIcons[index],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  );
                } else {
                  return Container();
                }
              })),
    );
  }
}
