import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "-",
              style: TextStyle(
                fontSize: 64,
                color: Colors.white,
              ),
            ),
            ProgressBar(
              amount: amount,
              text: text,
            ),
            Text(
              "+",
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
