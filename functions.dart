/*
dart là 1 lang oop, vi the cac ham cung la doi tuong va co functions
dieu nay co nghia la cac ham co the duoc gan cho cac bien hoac truyen cho cac ham khac
ta cung co the goi 1 the hien (instance) cua 1 lop dart nhu the no la 1 ham

*/

/*
ham la 1 khoi lenh thuc hien 1 tac vu gi do, khoi lenh nay duoc dung nhieu lan 
nen gom chung lai thanh 1 ham
*/
// viet day du
double tinhtong (var a, double b, double c){
  return a +b +c;
}

//  su dung rut gon "=>"
double tinhtong1 (var a, double b, double c) => a +b +c;



// ham main
void main(){
  print('hello world');
  var x = tinhtong(1,10,100);
  print(x);

  var y = tinhtong1(1, 10, 100);
  print(y);
}

