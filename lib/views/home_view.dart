import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pan_out/core/contants/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: kIconColor,
        onPressed: () {
          // Overlay.of(context).insert(entry);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: kPrimaryColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 3.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.house),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.bar_chart),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.store),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
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

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: kPrimaryColor,
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kBgColor,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/avatar.jpg",
              width: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rıfkı", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    height: 30,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kGreenColor,
                    ),
                    child: Text("100%", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    height: 30,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kGreenColor,
                    ),
                    child: Text("100%", style: TextStyle(color: Colors.white)),
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
