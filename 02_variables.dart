void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
//   final abilities = <String>['impostor'];
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // dynamic == null
  // es lo mismo q usar el 'any' en typescript
  dynamic errorMessage = 'Hola';
  // acepta cualquier cosa
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
