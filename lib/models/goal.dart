class Goal {
  int id;
  String category;
  String type;
  String frequency;
  int amount;

  Goal({
    this.id,
    this.category,
    this.type,
    this.frequency,
    this.amount,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'category': category,
      'type': type,
      'frequency': frequency,
      'amount': amount,
    };
  }

  Goal.fromMap(Map<String, dynamic> map) {
    this.id = map["id"];
    this.category = map["category"];
    this.type = map["type"];
    this.frequency = map["frequency"];
    this.amount = map["amount"];
  }
}
