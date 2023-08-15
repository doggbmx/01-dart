// un Future representa el acuerdo de una operacion asincrona
// la promesa resultante. puede fallar y hay que manejar la excepcion
void main() {
  print('Inicio del programa');
  // one way of doing it with async
//   print(await httpGet('coso.com'));
  httpGet('coso.com').then((value) => print(value)).catchError((e) {
    print(e);
  });
  print('Fin del programa');
}

Future<String> httpGet(String url) {
//   return Future.delayed(const Duration(seconds:1),() => 'hello Word!');
  return Future.delayed(
      const Duration(seconds: 1), () => throw 'Error en la peticion');
}
