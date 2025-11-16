/*
record la 1 kieu du lieu moi dc gioi thieu trong Dart 3.0, 
cho phep ta dinh nghia mot tap hop cac thuoc tinh khong thay doi duoc gom nhom lai voi nhau.
nhom nhieu gia tri co kieu du lieu khac nhau thanh mot doi tuong duy nhat.
*/

void main(){
  var r =('first', a:2, 5, 10.5); // record
  // dinh nghia record co 2 gia tri
  var point = (123,456);
  // dinh nghai person 
  var person = (name: 'John', age: 25, height: 175.5,10);

  print(point.$1);

  print(person.age);
  print(person.$1);
}