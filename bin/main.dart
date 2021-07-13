import 'package:graficos/graficos.dart';

void main(List<String> args) async {
  var canvas = Canvas(width: 8, height: 8, color: Color.white());

  //canvas.stage.setPixel(Point(x: 3, y: 3), Color.white());

  // canvas.drawLine(Line(start: Point(x: 0, y: 0), end: Point(x: 7, y: 0), color: Color.red()));

  // canvas.drawLine(Line(start: Point(x: 0, y: 0), end: Point(x: 0, y: 7), color: Color.red()));

  canvas.drawLine(Line(start: Point(x: 0, y: 0), end: Point(x: 7, y: 3), color: Color.red()));

  canvas.renderToConsole();
}
