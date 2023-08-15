void main() {
  final Hero wolverine = Hero('Logan', 'Regeneracion');
  print(wolverine);
}

class Hero {
  String name;
  String power;

  // another way of constructor
  Hero(this.name, this.power);

  // I think this way is better
//   Hero( String pName, String pPower) :
//     name = pName,
//     power = pPower;
}
