import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/services/database_helper.dart';
import 'package:pan_out/store.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  DatabaseHelper db = new DatabaseHelper();

  @override
  void initState() {
    super.initState();
    onStart();
    Future.delayed(Duration(seconds: 1), () async {
      Navigator.pushNamed(this.context, "/home");
    });
  }

  Future<void> onStart() async {
    List<Goal> goals = await db.goals();
    this.context.read<Store>().setGoals(goals);
    this.context.read<Store>().setCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
