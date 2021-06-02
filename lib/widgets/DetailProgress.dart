import 'package:flutter/material.dart';
import 'package:pan_out/widgets/button/edit_button.dart';

import 'progress_bar.dart';

class DetailProgress extends StatelessWidget {
  final String text;
  final int amount;

  const DetailProgress({
    Key key,
    this.text,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(
              amount: amount,
              text: text,
            ),
            EditButton(amount:amount),
          ],
        )
      ],
    );
  }
}
