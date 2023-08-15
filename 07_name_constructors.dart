void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony',
    'power': 'Money',
    'isAlive': true
  };

  final ironmain = Hero.fromJson(rawJson);

//   final ironmain = Hero(
//     isAlive: rawJson['isAlive'] ?? false,
//     name: 'Ironman',
//     power: 'Fly'
//   );

  print(ironmain.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });
  // this is one way to do it
//   Hero.fromJson(Map<String,dynamic> json) {
//     return Hero()
//   }
  // let me show you another way
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No life found!';

  @override
  String toString() {
    return 'name: $name, power: $power, isAlive: ${isAlive ? 'YES' : 'nope'}';
  }
}
