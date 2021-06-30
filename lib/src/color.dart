class Color {
  int r;
  int g;
  int b;
  Color({this.r, this.g, this.b});

  Color.black() {
    r = 0;
    g = 0;
    b = 0;
  }

  Color.white() {
    r = 255;
    g = 255;
    b = 255;
  }
  Color.red() {
    r = 255;
    g = 0;
    b = 0;
  }

  Color.blue() {
    r = 0;
    g = 0;
    b = 255;
  }

  Color.green() {
    r = 0;
    g = 255;
    b = 0;
  }

  int toGreyscale() {
    return (r / 3 + g / 3 + b / 3).round();
  }

  int toBinary() {
    if (toGreyscale() > 120) {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  String toString() {
    return toBinary().toString();
  }
}
