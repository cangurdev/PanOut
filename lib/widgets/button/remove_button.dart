import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/services/database_helper.dart';
import 'package:pan_out/store.dart';
import 'package:provider/provider.dart';

class RemoveButton extends StatelessWidget {
  final int id;
  final String category;

  const RemoveButton({
    Key key,
    this.id,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          DatabaseHelper db = new DatabaseHelper();
          await db.removeGoal(id);
          context.read<Store>().removeFromCategories(category, id);
          Navigator.pushNamed(context, "/home");
        },
        color: Colors.white,
        iconSize: 26,
        icon: Icon(Icons.remove_rounded));
  }
}
