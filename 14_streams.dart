// los stremas son flujos de informacion que pueden estar
// emitiendo valores constantemente
void main() {
  emitNumbers().listen((value) {
    print('stream number: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) => value).take(5);
}
