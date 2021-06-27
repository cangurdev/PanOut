import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/widgets/button/edit_button.dart';

import 'progress_bar.dart';

class DetailProgress extends StatelessWidget {
  final Goal goal;

  const DetailProgress({
    Key key,
    this.goal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var a = goal.toMap();
    print("ananı sikim $a");
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(
              amount: goal.amount,
              text: goal.type,
              current: goal.current,
            ),
            EditButton(
              id: goal.id,
              current: goal.current,
              category: goal.category,
            )
          ],
        )
      ],
    );
  }
}
