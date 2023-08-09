void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 8, 9, 10];

  print('List original: $numbers');
  print('List longitud: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  // ESTO DEVUELVE UN ITERABLEEEE!!!
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Reversed: $reversedNumbers');
  print('Lista: ${reversedNumbers.toList()}');
  // un set no puede tener valores duplicados
  print('Set: ${reversedNumbers.toSet()}');

  // de esta manera podemos eliminar valores duplicados de una lista
  print('List original: ${numbers.toSet().toList()}');

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; // true
  });

  print('>5 iterables: $numbersGreaterThan5');
  print('>5: ${numbersGreaterThan5.toSet()}');
}
