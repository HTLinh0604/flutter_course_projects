// lisst
void main(){
  List<String> list1 =['A','B','C']; // truc tiep
  var list2 = [1,2,3];
  List<String> list3 = []; // list rong
  var list4 = List<int>.filled(3,0); // list co kich thuoc
  
  print(list4);

  // 1 them phan tu 
  list1.add('d');
  list1.addAll(['A','C']); //list cho trung lap nhau
  list1.insert(0,'Z'); //chen 1 phan tu
  list1.insertAll(2,['X','Y']); // chen nhieu phan tu
  // print(list1);

  // 2 xoa phan tu
  list1.remove('A'); //xoa phan tu 
  list1.removeAt(0); //xoa phan tu tai vi tri
  list1.removeLast; // xoa phan tu cuoi cung
  list1.removeWhere((e)=>e=='C'); // xoa phan tu theo dieu kien
  
  print(list1);
}