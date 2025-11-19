// toán tử dieu kiện
// ?? la toan tu null, nghia la neu bien ben trai khac null thi lay gia tri ben trai, con null thi lay gia tri ben phai
// void main(){
//   var kiemtra = (100%2==0)?"100 la so chan": "100 la so le";
//   print(kiemtra);

//   var x = 100;
//   var y = x ?? 50;
//   print(y);

//   int? z;
//   y=z??30;
//   print(y);
// }

// vi du doc thu vien
// import "dart:io";
// void main(){
//   //your name
//   stdout.write('enter your name:');
//   String name=stdin.readLineSync()!;


//   // your age
//   stdout.write('enter your age:');
//   int age = int.parse(stdin.readLineSync()!); 

//   print('hi $name, you are $age year old');

// }

// cas kieu du lieu
// void main(){
//   //int so nguyen
//   int x = 100;
//   // double so thuc
//   double y = 100.5;
//   // num so nguyen or so thuc
//   num z =10;
//   num t = 10.75;
//   // chuyen chuoi sang so nguyen
//   var one = int.parse("1");
//   // print(one==1?'true':'false');
//   //chuyen chuoi sang so thuc
//   var onepointone = double.parse('1.0');
//   // print(onepointone=1.1);
//   // chuyen so sang chuoi
//   String str1 = 1.toString();
//   // print(str1);
//   // so thuc chuyen ve chuoi
//   String str2 =3.14159.toStringAsFixed(2); // 2 la so chu duoc hien thi sau dau phay
//   print(str2);

// }

//vi du kieu du lieu chuoi
/*
chuoi la 1 tap hop ky tu uft-16
*/
// void main(){
//   var s1 ='linh';
//   var s2 = "lih";
//   double d1 = 8.5;
//   double d2 = 9;
//   // chen gia tri cua 1 bieu thuc, bien vo o chuoi
//   var s3= 'xin chao $s1, goi tat la $s2, dat duoc  diem tb la: ${(d1+d2)/2}';
//   // print(s3);
//   // tao ra chuoi nam o nhieu dong
//   var s4 = """
//     dong 1
//     dong 2
//     dong 3
//   """;
//   // print(s4);
//   var s5 = "day la 1 doan\n vi du";
//   // print(s5);
//   var s6 = r'day la 1 doan \n vi du';
//   // print(s6);

//   var s8 ='chuoi 1' + 'chuoi 2';
//   print (s8);
//   var s9 = 'chuoi'
//   'nay'
//   'la';
//   print(s9);
// }

// kieu booolean
// void main(){
//   bool t1=true;
//   bool t2=false;
//   if(t1){
//     print('t1 la true');
//   }else {
//     print('t1 la false');
//   }
// }

