import 'package:flutter/material.dart';
import 'package:pan_out/widgets/DetailProgress.dart';

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Text(
              "Günlük Hedefler",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          DetailProgress(
            amount: 50,
            text: "Sayfa Sayısı",
          ),
          DetailProgress(
            amount: 50,
            text: "Sayfa Sayısı",
          ),
        ],
      ),
    );
  }
}
