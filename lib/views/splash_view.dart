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

    DateTime now = new DateTime.now();
    DateTime goalDate;
    for (var goal in goals) {
      goalDate = DateTime.parse(goal.date);

      if (now.isAfter(goalDate)) {
        goal.current = 0;
        await db.updateGoal(0, goal.id); //Set 0 in db
        this.context.read<Store>().pet.happiness -= 5; //Decrease pet happiness

        switch (goal.frequency) {
          case "günlük":
            goalDate.add(const Duration(days: 1));
            break;
          case "haftalık":
            goalDate.add(const Duration(days: 7));
            break;
          default:
            goalDate.add(const Duration(days: 30));
            break;
        }
      }
    }
    this.context.read<Store>().setPet(pet); //Set pet state
    this.context.read<Store>().setGoals(goals); //Set goal state
    this.context.read<Store>().setCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
