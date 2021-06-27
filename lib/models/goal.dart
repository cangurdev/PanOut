class Goal {
  int id;
  String category;
  String type;
  String frequency;
  int amount;
  int current;

  Goal({
    this.category,
    this.type,
    this.frequency,
    this.amount,
    this.current,
  });

  Map<String, dynamic> toMap() {
    var map = <String, Object>{
      'id': id,
      'category': category,
      'type': type,
      'frequency': frequency,
      'amount': amount,
      'current': current
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
  }
}
