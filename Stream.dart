import 'dart:async';

void vidustreammdemso(){
  print('==== Vi du 1: Stream tro choi nam muoi ====');
  // tao ra stream dem so tu 0 den 100, moi giay dem 1 so 
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (x)=>x+1).take(20);

  // lang nghe
  stream.listen((x) => print(' nghe duoc so: ${x*5} - dang chay tron'),
  onDone: () => print('Nguoi b: bat dau di tim'),
  onError: (loi) => print('Loi: ($loi)')  
  
  );

}



// vi du khac

void vidustremcontroller(){
  print('=== stream controller ====');

  // taopo bo dieu khien
  StreamController<String> controller = StreamController<String>();

  // lang nghe stream
  controller.stream.listen(
    (tinnhan) => print('tin nhan moi: $tinnhan'),
    onDone: () => print('khong con tin nhan nao'),
  );

  // gui tin nhan vao stream 
  print('dang gui tin nhan dau tien');
  controller.add('xin chao');
  //gui them tin nhan sau 2 giy
  Future.delayed(Duration(seconds:2), (){
    print('dang gui tin nhan thu 2');
    controller.add('ban khoe khong');
    
  });

  //gui them tin nhan cuoi va dong stream
  Future.delayed(Duration(seconds:3),(){
    print('dong stream');
    controller.close();
  });

}

void main(){
  // vidustreammdemso();
  vidustremcontroller();
}