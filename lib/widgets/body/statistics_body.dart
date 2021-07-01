import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/button/form_icon_button.dart';

class StatisticsBody extends StatelessWidget {
  final List<Goal> goals;
  final String category;
  final IconData icon;

  const StatisticsBody({
    Key key,
    this.goals,
    this.category,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FormIconButton(
          icon: icon,
          color: kIconColor,
        ),
        Text(
          category,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: goals.length,
              itemBuilder: (context, index) {
                Goal goal = goals[index];
                return Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          goal.frequency,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          goal.type,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Şu anki hedef: ${goal.amount}",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Şu anki seri: ${goal.currentStreak}",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "En uzun seri: ${goal.longestStreak}",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Toplam yapılan: ${goal.total}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                );
              }),
        ),
      ],
    );
  }
}
