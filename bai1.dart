// void main () {
//   String name = "linh";
//   int age = 21;

//   if (age>=21){
//     print('hello $name');
//   }
  
// }

// vi du 2
// /* cách khai báo biến:
//  */
// void main(){
//   //khai bao tu doan
//   var ten ='linh';
//   var tuoi = 21;

//   // khai bao cu the 
//   String name = ' tung';
//   int age = 22;

//   // khai bao voi object
//   Object tennguoidung = 'linh';
//   Object tuoinguoidung = 21;


// }

// //vi du 3
// void main(){
//   String? ten; //dau ? cho phep null
//   ten = null;
// }

//vidu 4
// String? moTa;
// khai bao theo kieu lazy initialization
// late String moTa;
// void main(){
//   // moTa =null;
//   moTa = 'xinchao';
//   print(moTa);
// }

//vi du 5 
// su dung bien final va const
// void main(){
//   final name = 'linh';
//   final int age;
//   age = 21;
//   const color = 'red';
//   const int material = 1;

// }
// cac phep tinh co ban
// void main(){
//   // phep cong 
//   int a= 5+3;
//   int b= 10-4;
//   int c =3*4;
//   double d = 10/2;
//   int e = 7%3;

//   print(e);
//   //phep chia lay phan nguy
//   int f = 7~/2;
//   print(f);
//   // phep gan va tinh toan ket hop
//   int x= 10;
//   x+=5; // x=x+5
//   x=-2;
//   x~/=3;
//   // tang hoac giam
//   // ++, --
//   int y=100;
//   y++; // y=y+1
//   y--; //y=y-1
//   print(y++);
//   print(++y);
//   print(y--);
//   print(--y);

// }

// cac phep so sanh
// void main(){
//   print (2==2);
// }


//kiem tra kieu du lieu
// void main(){
//   Object obj = 'hello';

//   // kiem tra obj co phai la string 
//   if(obj is String){
//     print('obj la string');
//   }
//   // kiem tra int 
//   if (obj is! int){
//     print('obj ko la int');
//   }
//   //ep kieu
//   String str = obj as String;
//   print(str.toUpperCase());
// }


// gan bien
// void main(){
//   var a =2;
//   print(a);
//   // ??= gan neu bien chua co gia tri
//   int? b;
//   b ??= 5;
//   print('b=$b');
// }


