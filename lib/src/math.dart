import 'package:graficos/graficos.dart';

class Math {
  static PointF findingEquationOfLine(PointF point1, PointF point2) {
    double x1 = point1.x;
    double y1 = point1.y;
    double x2 = point2.x;
    double y2 = point2.y;
    double inclinacao, interceptacao;
    double dx, dy;
    // "Program to find the equation of a line given two end points\n";

    dx = x2 - x1;
    dy = y2 - y1;

    inclinacao = dy / dx;
    // y = mx + c
    // intercept c = y - mx
    interceptacao = y1 - inclinacao * x1; // which is same as y2 - slope * x2

    return PointF(x: interceptacao, y: inclinacao);
  }

  static double findingSlopeOfLine(PointF point1, PointF point2) {
    double x1 = point1.x;
    double y1 = point1.y;
    double x2 = point2.x;
    double y2 = point2.y;
    double inclinacao;
    double dx, dy;

    dx = x2 - x1;
    dy = y2 - y1;

    inclinacao = dy / dx;

    return inclinacao;
  }

  static double findingInterceptOfLine(PointF point1, PointF point2) {
    double x1 = point1.x;
    double y1 = point1.y;
    double x2 = point2.x;
    double y2 = point2.y;
    double inclinacao, interceptacao;
    double dx, dy;

    dx = x2 - x1;
    dy = y2 - y1;

    inclinacao = dy / dx;
    // y = mx + c
    // intercept c = y - mx
    interceptacao = y1 - inclinacao * x1; // which is same as y2 - slope * x2

    return interceptacao;
  }
}
