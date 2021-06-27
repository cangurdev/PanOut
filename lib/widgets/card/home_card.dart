import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/button/form_icon_button.dart';
import 'package:pan_out/widgets/progress_bar.dart';

class HomeCard extends StatelessWidget {
  final List<Goal> goals;
  final String category;

  const HomeCard({Key key, this.goals, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail", arguments: category);
      },
      child: Container(
        width: getProportionateScreenWidth(300),
        height: getProportionateScreenHeight(250),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: kGrayColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          FormIconButton(
            icon: Icons.book,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            goal.frequency,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ProgressBar(
                            amount: goal.amount,
                            current: goal.current,
                            text: goal.type,
                          ),
                        ]),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
