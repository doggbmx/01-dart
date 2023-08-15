abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract mixin class Volador {
  void volar() => print('estoy volando!');
}

abstract mixin class Caminante {
  void caminar() => print('estoy caminando!');
}

abstract mixin class Nadador {
  void nadar() => print('estoy nadando!');
}

// MIXIN
class Dolphin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Dolphin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final jorge = Pato();
  jorge.nadar();
  jorge.caminar();
  jorge.volar();
}
