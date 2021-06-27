import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/services/database_helper.dart';
import 'package:pan_out/store.dart';
import 'package:pan_out/theme/constants.dart';
import 'package:pan_out/widgets/input/text_input.dart';
import 'package:provider/provider.dart';

class EditButton extends StatelessWidget {
  final String category;
  final int id;
  final int current;

  const EditButton({
    Key key,
    this.category,
    this.id,
    this.current,
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
                  "Şu anki Değer: $current",
                  style: TextStyle(color: Colors.white),
                ),
                TextInput(
                  title: "Yeni Değer",
                ),
                TextButton(
                  onPressed: () async {
                    DatabaseHelper db = new DatabaseHelper();
                    int newCurrent = context.read<Store>().newGoalCurrent;
                    await db.updateGoal(newCurrent, id);
                    List<Goal> goals = await db.goals();
                    context.read<Store>().setGoals(goals);
                    context
                        .read<Store>()
                        .updateCategories(category, id, newCurrent);
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
