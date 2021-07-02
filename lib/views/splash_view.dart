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
    Pet pet = await db.pet();

    if (pet == null) {
      pet = Pet(
        id: 1,
        happiness: 50,
        name: "Rıfkı",
        avatar: "assets/images/happy.jpg",
      ); //Create initial pet
      await db.insertPet(pet); //Insert it to db
    }
    if (pet.happiness < 55) {
      pet.avatar = "assets/images/sad.jpg";
    } else {
      pet.avatar = "assets/images/happy.jpg";
    }
    this.context.read<Store>().setPet(pet); //Set pet state

    DateTime now = new DateTime.now();
    DateTime goalDate;

    for (var goal in goals) {
      goalDate = DateTime.parse(goal.date);

      int difference = now.difference(goalDate).inDays;

      bool checkDate = goal.frequency == "günlük" && difference >= 1 ||
          goal.frequency == "haftalık" && difference >= 7 ||
          goal.frequency == "aylık" && difference >= 30;

      if (checkDate) {
        if (goal.current < goal.amount) {
          await db.updateStreak(0, goal.id); //Set current streak 0 in db
          this.context.read<Store>().pet.happiness -=
              5; //Decrease pet happiness
        }
        goal.current = 0;
        await db.updateGoal(0, goal.id); //Set current value 0 in db
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
        await db.updateDate(goal.date, goal.id);
      }
    }
    this.context.read<Store>().setGoals(goals); //Set goal state
    this.context.read<Store>().setCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
