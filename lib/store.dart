import 'package:flutter/material.dart';
import 'package:pan_out/models/goal.dart';
import 'package:pan_out/models/pet.dart';

class Store extends ChangeNotifier {
  Goal _goal;
  int _index;
  List<Goal> _goals;
  int _newGoalCurrent;
  Pet _pet;

  Map<String, List<Goal>> _categories = {
    "Ders": [],
    "Spor": [],
    "Kitap": [],
    "Enstrüman": [],
    "Özel": [],
  };
  Map<String, List<Goal>> _frequencies = {
    "Günlük": [],
    "Haftalık": [],
    "Aylık": [],
  };

  Goal get goal => _goal;
  Pet get pet => _pet;
  int get index => _index;
  int get newGoalCurrent => _newGoalCurrent;
  List<Goal> get goals => _goals;
  Map<String, List<Goal>> get categories => _categories;
  Map<String, List<Goal>> get frequencies => _frequencies;

  Store(
    this._goal,
  );

  void updateGoal(String key, dynamic value) {
    Map<String, dynamic> goalMap = _goal.toMap();
    try {
      value = int.parse(value);
    } catch (e) {}
    goalMap[key] = value;
    _goal = Goal.fromMap(goalMap);
    notifyListeners();
  }

  void increasePetHappiness() {
    _pet.happiness += 5;
    notifyListeners();
  }

  void setGoal(Goal goal) {
    _goal = goal;
    notifyListeners();
  }

  void setPet(Pet pet) {
    _pet = pet;
    notifyListeners();
  }

  void setGoalValue(int amount) {
    _newGoalCurrent = amount;
    notifyListeners();
  }

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }

  void clearGoal() {
    _goal = new Goal(
      category: "",
      type: "",
      amount: 0,
      frequency: "günlük",
    );
    notifyListeners();
  }

  void setGoals(List<Goal> goals) {
    _goals = goals;
    notifyListeners();
  }

  void setCategories() {
    for (Goal goal in _goals) {
      _categories[goal.category].add(goal);
    }
    notifyListeners();
  }

  void clearCategories() {
    _categories = {
      "Ders": [],
      "Spor": [],
      "Kitap": [],
      "Enstrüman": [],
      "Özel": [],
    };
    notifyListeners();
  }

  int updateCategories(String category, int id, int current) {
    List<Goal> arr = _categories[category];
    for (var i = 0; i < arr.length; i++) {
      Goal goal = arr[i];
      if (goal.id == id) {
        _categories[category][i].current = current;
        return goal.amount;
      }
    }
    return 0;
  }

  void removeFromCategories(String category, int id) {
    _categories[category].removeWhere((goal) => goal.id == id);
  }

  void addCategories(Goal goal) {
    _categories[goal.category].add(goal);
    notifyListeners();
  }
}
