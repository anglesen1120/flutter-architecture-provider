import 'dart:math';

class Dog {
  String name;
  String url;
  Dog({this.name, this.url});

  factory Dog.fromJson(Map<String, dynamic> json) {

    String dogName = DogNameGenerator().getName();
    return Dog(name: dogName, url: json['message']);
  }
}

class DogNameGenerator {
  List<String> firstName = [
    "Bolt",
    "Alpha",
    "Spike",
    "Saber",
    "Blaze",
    "Chess",
    "Ace",
    "Quiz",
    "Harley",
    "Bandit",
    "Raven",
    "Ripper",
    "Cobra",
    "Valley",
    "Shadow",
    "Flame",
    "Thunder",
    "Mocha",
    "Frisk",
    "Copper",
    "Ice",
    "Solo",
    "Vice",
    "Stinger",
    "Red",
  ];

  List<String> lastName = [
    "Enigma",
    "Storm",
    "Archer",
    "Gunner",
    "Tango",
    "Juno",
    "Apollo",
    "Quartz",
    "Pistol",
    "Rider",
    "Pip",
    "Dirt",
    "River",
    "Shot",
    "Kong",
    "Shank",
  ];

  String getName() {
    Random random = new Random();
    int randomFirstName = random.nextInt(15);
    int randomLastName = random.nextInt(15);
    return firstName[randomFirstName] + " " + lastName[randomLastName];
  }
}