import 'dart:math';
class Point {
  double x,y;
  double _z;
  Point(this.x, this.y);

  double distanceTo(Point other) => sqrt(pow(x - other.x, 2) + pow(y - other.y, 2));

  // dx = x - other.x;
  // dy = y - other.y;
  // return sqrt(dx * dx + dy * dy);
} 


void main(){
  Point p1 = Point(0,0);
  var p2 = Point(3,3);
  print((p1.distanceTo(p2)).toStringAsFixed(2));
}