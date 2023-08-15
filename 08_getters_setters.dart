void main() {
  final mySquare = Square(side: 10);

  mySquare._side = 5;

  print('area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area => _side * _side;

  set side(double value) {
    if (value < 0) throw 'Value must be positive!';
    _side = value;
  }

//   double calculateArea() {
//     return side * side;
//   }
}
