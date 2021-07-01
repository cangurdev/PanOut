import 'package:flutter/material.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/theme/size_config.dart';
import 'package:pan_out/widgets/progress/progress_bar.dart';
import 'package:provider/provider.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(145),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: kPrimaryColor,
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kBgColor,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/avatar.jpg",
              width: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Rıfkı", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 8,
                  ),
                  ProgressBar(
                    amount: 100,
                    current: context.read<Store>().pet.happiness,
                    text: ":)",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
