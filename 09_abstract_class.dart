void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy left!');
  }

  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear,
  wind,
  water,
}

abstract class EnergyPlant {
  double energyLeft;
  // una vez instanciado no se puede cambiar
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double energy);
}

// extends o implements
// extends hereda basicamente, hereda TODO
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy;
  }
}

// el implements te obliga a colocar los overrides explicitamente
// puede servir en los casos que quieras implementar un metodo
// en especifico nomas
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double energy) {
    energyLeft -= (energy * energy);
  }
}
