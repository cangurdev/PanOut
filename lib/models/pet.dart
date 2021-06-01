class Pet {
  int id;
  int hungar;
  int happiness;
  String name;
  String image;

  Pet({
    this.hungar,
    this.happiness,
    this.image,
    this.name,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hungar': hungar,
      'happiness': happiness,
      'image': image,
      'name': name,
    };
  }
}
