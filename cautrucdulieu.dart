// lisst
void main(){
  List<String> list1 =['A','B','C']; // truc tiep
  var list2 = [1,2,3];
  List<String> list3 = []; // list rong
  var list4 = List<int>.filled(3,0); // list co kich thuoc
  
  // print(list4);

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
  list1.clear();
  // print(list1);

  // 3 truy cap phan tu
  // print(list2[0]); // lay phan tu tai vi tri
  // print(list2.first); // lay phan tu dau tien
  // print(list2.last); // lay phan tu cuoi cung
  // print(list2.length); // lay do dai cua list
  
  // 4 kiem tra 
  // print(list2.isEmpty); // kiem tra list rong
  // print('list3: ${list3.isNotEmpty?'khongrong':'rong'}'); // kiem tra list ko rong
  // print(list4.contains(1)); // kiem tra phan tu co trong list ko 
  // print(list4.indexOf(0)); // tra ve vi tri phan tu o list
  // print(list4.lastIndexOf(0)); // tra ve vi tri phan tu o list tu cuoi len dau

  // 5 bien doi
  list4= [2,1,3,0,9,10];
  // print(list4);
  list4.sort(); //sap xep tang dan
  // print(list4);
  // sap xep giam dan
  list4.reversed; //dao nguoc thu tu
  // print(list4.reversed);
  list4 = list4.reversed.toList(); // chuyen ve list
  // print(list4);
  // cat va noi list
  var sublist = list4.sublist(1,3); // cat 1 sublist tu 1 den 3
  // print(sublist);
  var strJoined=list4.join(","); // noi list thanh chuoi
  // print(str_joined);
  // duyet cac phan tu trong list
  for (var element in list4) {
    print(element);
  }
  
}