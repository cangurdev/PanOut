import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/widgets/DetailProgress.dart';
import 'package:provider/provider.dart';

class DetailBody extends StatelessWidget {
  final String category;
  const DetailBody({
    Key key,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Goal> goals = context.read<Store>().categories[category];
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
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
                          SizedBox(
                            height: 5,
                          ),
                          DetailProgress(
                            goal: goal,
                          ),
                        ]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
