import '../graficos.dart';
import 'color.dart';

class Bitmap {
  Bitmap({this.width = 4, this.height = 4});

  Bitmap.fromBlack({this.width = 4, this.height = 4}) {
    /*for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        data.add(Color.black());
      }
    }*/

    data = List<Color>.filled(width * height, Color.black());
  }

  void fill(Color color) {
    data = List<Color>.filled(width * height, color);
  }

  void setPixel(Point point, Color color) {
    if (point.x > width || point.y > height) {
      return;
    } else {
      //data[point.y * width + point.x] = color;
      var index = 0;
      for (var y = 0; y < height; y++) {
        for (var x = 0; x < width; x++) {
          if (y == point.y && x == point.x) {
            data[index] = color;
            break;
          }
          index++;
        }
      }
    }
  }

  void putPixel(int xinput, int yinput, Color color) {
    //data[point.y * width + point.x] = color;
    var index = 0;
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        if (y == yinput && x == xinput) {
          data[index] = color;
          break;
        }
        index++;
      }
    }
  }

  int width;
  int height;
  List<Color> data = <Color>[];
}
