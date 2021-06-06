import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';

class Store extends ChangeNotifier {
  Goal _goal;
  int _index;
  List<Goal> _goals;

  Goal get goal => _goal;
  int get index => _index;
  List<Goal> get goals => _goals;

  Store(
    this._goal,
  );

  void updateGoal(String key, dynamic value) {
    Map<String, dynamic> goalMap = _goal.toMap();
    goalMap[key] = value;
    _goal = Goal.fromMap(goalMap);
    notifyListeners();
  }

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }

  void clearGoal() {
    _goal = new Goal();
    notifyListeners();
  }

  void setGoals(List<Goal> goals){
    _goals = goals;
    notifyListeners();
  }
}
