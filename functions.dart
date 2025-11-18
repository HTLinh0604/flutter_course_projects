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
// => expression la cach viet gon cua return 

/*
luu y: chi co bieu thuc (expression) dung dang sau =>, khong ap dung cau lenh statements
vi du: ta khong the if statement dung sau => duoc. tuy nhien co the su dung toan tu 3 ngoi:
condition ? expr1: expr2
*/


// ham voi ten cua tham so 
// khi goi 1 ham ta co truyen gia tri thong qua ten bien
String createFullName({String ho='', String chulot='', String ten=''}){
  return ho +" " + chulot+" "+ ten;
}

//tham so tuy chon

double sum(double a , [double? b, double? c, double? d]){
  var result = a ;
  result += (b!=null)?b:0;
  result += (c!=null)?c:0;
  result += (d!=null)?d:0;
  return result;
}

// ham an danh




// ham main
void main(){
  print('hello world');
  var x = tinhtong(1,10,100);
  // print(x);

  var y = tinhtong1(1, 10, 100);
  // print(y);

  var fn = createFullName(ho :'Huynh',chulot: 'Thai',ten: 'Linh');
  // print(fn);

  var fn1 = createFullName(ten: 'Linh', chulot: 'Thai', ho :'Huynh');
  // print(fn1);

  var fn2 = createFullName(chulot: 'Thai',ten: 'Linh');
  // print(fn2);

  print(sum(10));
  print(sum(10,20));
  print(sum(10,20,30));
  print(sum(10,20,30,40));

  var ham = (var a, var b) => a+b;
  print(ham(10,20));
}
