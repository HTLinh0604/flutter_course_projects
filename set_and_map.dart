void main(){
  /*
  - set là tap hop ca phan tu ko trung lap
  - ko co thu tu xac dinh
  - moi phan tu chi xuat hien 1 lan
  */
  Set<String> set1 = {'apple', 'banana', 'cherry'};
  var set2 = <int>{1,2,3};
  Set<String> set3 =Set();
  var set4 = Set<int>.from([1,2,2,3]);

  var set5 = {1,2,3};
  var set6= {3,4,5};

  var union = set5.union(set6); // hop 2 set}
  var intersection = set5.intersection(set6); // giao
  var difference = set5.difference(set6); // hieu
  
  // bien doi
  var list = set1.toList(); // chuyen thanh list
  var newSet = Set<String>.from(set1); // tao set moi
  // loc va anh xa 
  var filtered = set1.where((e) => e.startsWith('A')); // loc 
  var mapped = set1.map((e) => e.toLowerCase()); // chuyen thanh chu thuong

  // xu ly tung phan tu
  set1.forEach((element){
    print(element);
  });

  // vi du 
  // quan ly danh sach sinh vien
  Set<String> friendIds = {'id1', 'id2', 'id3'};
  //them sinh vien moi
  friendIds.add('id4');
  friendIds.add('id1'); // khong them duoc vi da ton tai
// kiem tra sinh vien
bool isFriend = friendIds.contains('id3'); // true
// de xuat
Set<String> suggestedFriends = {'id5', 'id6', 'id1'};
var newFriends = suggestedFriends.difference(friendIds); 



}