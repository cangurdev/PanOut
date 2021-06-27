class Pet {
  int id;
  int happiness;
  String name;
  String avatar;

  Pet({
    this.id,
    this.happiness,
    this.avatar,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'happiness': happiness,
      'avatar': avatar,
      'name': name,
    };
  }
}
