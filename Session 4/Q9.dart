// Q9: Create a class `Rectangle` with:
// Private attributes `_width` and `_height`.
// A constructor that initializes the values.
// A getter `area` that calculates and returns the area.
// In `main()`, create a `Rectangle` object and print its area.
void main() {
  Rectangle myRoom = Rectangle(3.2, 2.8);
  print(myRoom.area.toStringAsFixed(2));
}

class Rectangle {
  double? _width;
  double? _height;

  Rectangle (double? width, double? height) {
    this._width = width;
    this._height = height;
  }

  double get area => _width! * _height!;
}