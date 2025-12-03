// cau truc du lieu map (dictionary)
void main(){
  /*
  -map la cau truc du lieu luu tru dang key-value
  - moi key la duy nhat
  - value co the trung lap
  - key va value co the la nhieu kieu du lieu
  */
  Map<String, dynamic> user1= {
    'name':'Alice',
    'age':30,
    'isStudent':true,
    'address': 'hcm'
  };

  var user2 = <String, dynamic>{
    'name':'Bob',
    'age':25,
    'address':'hn'
  };
  Map<int, String > numbers ={};
  var emptyMap = <String, int>{};

  user1['email']='3Djy6@example.com';
  user1['age']=31; // cap nhat gia tri
  user1.putIfAbsent('phone', () => '0123456789'); // them key neu khong ton tai (put ifAbsent)

}