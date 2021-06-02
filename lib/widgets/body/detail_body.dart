import 'package:flutter/material.dart';
import 'package:pan_out/widgets/DetailProgress.dart';

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Günlük Hedefler",
            style: TextStyle(color: Colors.white),
          ),
          DetailProgress(amount: 50, text: "Sayfa Sayısı",),
        ],
      ),
    );
  }
}
