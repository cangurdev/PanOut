class Pet {
  int id;
  int hungar;
  int happiness;
  String name;
  String avatar;

  Pet({
    this.id,
    this.hungar,
    this.happiness,
    this.avatar,
    this.name,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hungar': hungar,
      'happiness': happiness,
      'avatar': avatar,
      'name': name,
    };
  }
}
