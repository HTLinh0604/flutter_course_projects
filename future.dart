import 'dart:async';


Future<String> layten()  async {
  return 'linh';
}

// await la tam dung thuc thi ham tai dong do, doi future hoan thanh roi moi thuc hien tiep

// ham tra be futeure
Future<String> taidulieu(){
  return Future.delayed(
    Duration(seconds: 2),
    () => 'tai du lieu xong'
  ); 
}

void  hamchinh1(){
  print('bat dau tai');
  Future<String> f = taidulieu();
  f.then((ketqua){
    print('ketqua: $ketqua');
  });

  print('tiep tuc viec khac');

}


void main(){
  hamchinh1();
}