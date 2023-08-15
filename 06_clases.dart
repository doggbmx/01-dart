void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  print(wolverine.toString());
}

class Hero {
  String name;
  String power;

  // another way of constructor
  Hero({required this.name, this.power = 'Sin poder'});

  // I think this way is better
//   Hero( String pName, String pPower) :
//     name = pName,
//     power = pPower;

  // vamos a sobreescribir un metodo .toString()
  @override
  String toString() {
    return 'name: $name, power: $power';
  }
}
