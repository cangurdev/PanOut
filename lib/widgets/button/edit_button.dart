import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/models/pet.dart';
import 'package:pan_out/services/database_helper.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/input/text_input.dart';
import 'package:provider/provider.dart';

class EditButton extends StatelessWidget {
  final Goal goal;
  const EditButton({
    Key key,
    this.goal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.edit),
      color: Colors.white,
      iconSize: 26,
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: kBgColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Şu anki Değer: ${goal.current}",
                  style: TextStyle(color: Colors.white),
                ),
                TextInput(
                  title: "Yeni Değer",
                  goalKey: "current",
                ),
                TextButton(
                  onPressed: () async {
                    DatabaseHelper db = new DatabaseHelper();
                    int newCurrent = context.read<Store>().goal.current;
                    int streak = goal.currentStreak;
                    int longestStreak = goal.longestStreak;
                    int id = goal.id;
                    int current = goal.current;
                    String category = goal.category;

                    await db.updateGoal(
                        newCurrent, id); //Update current amount in db
                    int target = context.read<Store>().updateCategories(
                        category,
                        id,
                        newCurrent); //Update current amount in state

                    int newTotal =
                        newCurrent - current; //Calculate increase amount
                    await db.updateTotal(newTotal, id); //Update amount in db
                    context.read<Store>().updateTotalAmount(
                        category, id, newTotal); //Update total amount in state

                    if (newCurrent >= target && current < target) {
                      Pet pet = context.read<Store>().pet;
                      await db.increasePetHappiness(
                          pet.happiness + 5); //Increase pet happiness in db
                      context
                          .read<Store>()
                          .increasePetHappiness(); //Increase pet happiness in state
                      context.read<Store>().setPetAvatar();

                      await db.updateStreak(streak + 1, id);
                      if (streak >= longestStreak) {
                        await db.updateLongestStreak(streak + 1, id);
                      }
                      List<Goal> goals = await db.goals();

                      context.read<Store>().setGoals(goals);
                      context.read<Store>().clearCategories();
                      context.read<Store>().setCategories();
                    }
                    Navigator.pushNamed(context, "/home");
                  },
                  child: const Text(
                    'Güncelle',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
