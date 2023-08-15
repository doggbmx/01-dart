// un Future representa el acuerdo de una operacion asincrona
// la promesa resultante. puede fallar y hay que manejar la excepcion
void main() async {
  print('Inicio del programa');
  try {
    // one way of doing it with async
    print(await httpGet('coso.com'));
  } catch (err) {
    print(err);
  }

  // this does not wait
//   httpGet('coso.com').then((value) => print(value)).catchError((e) {
//     print(e);
//   });
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error';
//   return 'habemos info';
}
