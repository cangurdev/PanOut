class Goal {
  int id;
  String category;
  String type;
  String frequency;
  int amount;
  int current;
  String date;

  Goal({
    this.category,
    this.type,
    this.frequency,
    this.amount,
    this.current,
    this.date,
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
  }
}
