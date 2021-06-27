import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/models/pet.dart';
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
    List<Goal> goals = await db.goals(); //Get goals from db
    Pet pet = Pet(
      id: 1,
      happiness: 50,
      name: "Rıfkı",
    ); //Create initial pet
    await db.insertPet(pet); //Insert it to db
    this.context.read<Store>().setPet(pet); //Set pet state
    this.context.read<Store>().setGoals(goals); //Set goal state
    this.context.read<Store>().setCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
