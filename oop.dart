import 'dart:math';
class Point {
  double x,y;

  Point(this.x, this.y);

  double distanceTo(Point other) => sqrt(pow(x - other.x, 2) + pow(y - other.y, 2));

  // dx = x - other.x;
  // dy = y - other.y;
  // return sqrt(dx * dx + dy * dy);
} 


class Point2 {
  double? x; // thuoc tinh intance x, ban dau co gia tri la null
  double z =0; // thuoc tinh intance z, ban dau co gia tri la 0

}


double X_ =1.5;

class Point3 {
  double? x=X_; // co the truy cap khai bao ko phu thuoc this

  // double? y = this.x; => error

  double? y;
  late double? z =this.x;

  Point3(this.x, this.y, this.z);
}


class Rectangle{ 
  double left, top, width, height;
  late double _z;

  Rectangle(this.left, this.top, this.width, this.height);

  
  double get z => _z;
  set z(double value) => _z = value;

@override
  String toString() {
    return left.toString()+','+top.toString()+'   '+width.toString()+' '+height.toString();
  }

  @override
  bool operator == (Object other) {
    if (identical (this,other )) return true;
    if (other is! Rectangle) return false;
    return left == other.left && top == other.top && width == other.width && height == other.height;
  }
}




// static

class MyMath{
  static const double PI = 3.14;

  static double sqr(double x) => x*x;

}


void main(){
  Point p1 = Point(0,0);
  var p2 = Point(3,3);
  print((p1.distanceTo(p2)).toStringAsFixed(2));

  Point2 p2_1 =Point2();
  print(p2_1.z);

  // static
  print(MyMath.PI);
  print(MyMath.sqr(5));

  // get and set
  Rectangle r = Rectangle(0,0, 15, 10);
  r.z=100;
  print(r.z);

  print(r.toString());

  // override

  Rectangle r2 = Rectangle(1, 0, 15, 10);

  print(r==r2);

}