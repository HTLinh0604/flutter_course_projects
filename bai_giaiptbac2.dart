// phuong trinh bac 2
// ax2 + bx +c =0
import 'dart:math';
import 'dart:io';
void main(){
  double a=0, b=0, c=0;
// input a
  do {
    stdout.write('nhap a (a khac 0): ');
    String? inputA = stdin.readLineSync();
    if(inputA!=null){
      a = double.tryParse(inputA) ??0; // co bat loi neu nhap sai
    }
  }while(a==0);
// input b
  stdout.write('nhap b: ');
  String? inputB = stdin.readLineSync();
    if(inputB!=null){
      b = double.tryParse(inputB) ??0; // co bat loi neu nhap sai
    }
    // input c
    stdout.write('nhap c: ');
    String ? inputC = stdin.readLineSync();
    if(inputC!=null){
      c = double.tryParse(inputC)??0;
    }
    // tinh delta
    double delta = b*b -4*a*c;
    //hien thi phuong trinh
    print('phuong trinh cua ban la: ${a}x^2 + ${b}x + $c = 0');
    // giai phuong trinh
    if(delta<0){
      print('phuong trinh vo nghiem');

    }else if(delta==0){
      double x= -b/(2*a);
      print('phuong trinh co nghiem kep x1=x2=${x.toStringAsFixed(2)}');
    }else{
      double x1 = (-b - sqrt(delta))/(2*a);
      double x2 = (-b + sqrt(delta))/(2*a);
      print('phuong trinh co 2 nghiem phan biet:');
      print('x1 =${x1.toStringAsFixed(2)}');
      print('x2 =${x2.toStringAsFixed(2)}');
    }
}