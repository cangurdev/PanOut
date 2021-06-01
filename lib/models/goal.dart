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
}

