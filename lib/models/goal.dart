class Goal {
  int id;
  String category;
  String type;
  String frequency;
  int amount;
  int current;
  String date;
  int total;
  int currentStreak;
  int longestStreak;

  Goal({
    this.category,
    this.type,
    this.frequency,
    this.amount,
    this.current,
    this.date,
    this.total,
    this.currentStreak,
    this.longestStreak,
  });

  Map<String, dynamic> toMap() {
    var map = <String, Object>{
      'id': id,
      'category': category,
      'type': type,
      'frequency': frequency,
      'amount': amount,
      'current': current,
      'date': date,
      'total': total,
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
    };

    return map;
  }

  Goal.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    category = map["category"];
    type = map["type"];
    frequency = map["frequency"];
    amount = map["amount"];
    current = map["current"];
    date = map["date"];
    total = map["total"];
    currentStreak = map["currentStreak"];
    longestStreak = map["longestStreak"];
  }
}
