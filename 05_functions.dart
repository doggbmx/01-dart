void main() {
  print(greetEveryone());
  // esto lanzara un error
//   print('Suma: ${addTwoNumbers(10,'20')}');
  print('Suma: ${addTwoNumbers(10, 20)}');
}

String greetEveryone() => 'Hello everyone!';

// int addTwoNumbers(int a, int b) {
//   return a+b;
// }
// tarea
int addTwoNumbers(int a, int b) => a + b;
// PARAMETROS OPCIONALES
int addTwoNumbersOptionar(int a, [int b = 0]) {
  // null safety using nullish coalesing
//   b = b ?? 0;
  // chupeteamos la linea de arriba
//   b??=0;// chupets
  return a + b;
}
