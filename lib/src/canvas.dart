import 'package:graficos/graficos.dart';

class Canvas {
  Bitmap stage;

  Canvas({int width = 4, int height = 4, Color color}) {
    if (color == null) {
      stage = Bitmap.fromBlack(width: width, height: height);
    }
    stage = Bitmap(width: width, height: height);
    stage.fill(color);
  }

  void drawLine(Line line) {
    int x0 = line.start.x;
    int y0 = line.start.y;
    int x1 = line.end.x;
    int y1 = line.end.y;

    int dx = x1 - x0;
    int dy = y1 - y0;
    int d = 2 * dx - dy;
    int incr_e = 2 * dy;
    int incr_ne = 2 * (dy - dx);
    int x = x0;
    int y = y0;
    stage.putPixel(x, y, line.color);
    while (x <= x1) {
      if (d <= 0) {
        d += incr_e;
        x++;
      } else {
        d += incr_ne;
        x++;
        y++;
      }
      stage.putPixel(x, y, line.color);
    }
  }

  void drawLine2(Line line) {
    var maior = line.end.y > line.end.x ? line.end.y : line.end.x;

    var r = Math.findingSlopeOfLine(PointF(x: 0, y: 0), PointF(x: 3, y: 3));
    print(r);

    for (var i = 0; i < maior; i++) {}
  }

  String _colorToConsole(Color color) {
    var text = '██';
    var escape = String.fromCharCode(27);
    var resetAttributes = "${escape}[0m";
    var r = color.r;
    var g = color.g;
    var b = color.b;
    var foreground = "${escape}[38;2;$r;$g;${b}m";
    var cmd = foreground + text + resetAttributes;
    //'"${String.fromCharCode(27)}[38;2;255;0;0;48;2mCOLORFUL TEXT{String.fromCharCode(27)}[0m"'
    //var result = await Process.run('powershell', ['-Command', 'Write-Host', 'cmd'], runInShell: false);
    // stdout.write(result.stdout);
    //stdout.write(result.stderr);
    return cmd;

    /* var greyscale = color.r / 3 + color.g / 3 + color.b / 3;
    if (greyscale > 120) {
      return '1 ';
    } else {
      return '0 ';
    }*/
  }

  renderToConsole() {
    var result = '';
    var indice = 0;
    for (var y = 0; y < stage.height; y++) {
      var line = '';
      for (var x = 0; x < stage.width; x++) {
        line += _colorToConsole(stage.data[indice]);
        indice++;
      }
      result += line + '\r\n';
    }

    print(result);
  }
}
