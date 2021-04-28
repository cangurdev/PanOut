import 'package:flutter/material.dart';
import 'package:pan_out/theme/size_config.dart';

//import widgets
import 'package:pan_out/widgets/bottom_navbar/Fab.dart';
import 'package:pan_out/widgets/bottom_navbar/bottom_navbar.dart';
import 'package:pan_out/widgets/top_navbar/home_navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Fab(),
      bottomNavigationBar: SizedBox(height: getProportionateScreenHeight(64), child: BottomNavbar()),
      body: SafeArea(
        child: Column(
          children: [
            HomeNavbar(),
          ],
        ),
      ),
    );
  }
}
