void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  print('wind: ${chargePhone(windPlant)}');
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
  PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double energy);
}

// extends o implements
// extends hereda basicamente
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy;
  }
}
