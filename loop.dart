void main(){
  //fort
  for  (var i=1; i<=5; i++){
    print(i);
  }

  //iterable: list, set
  var names = ['huynh','thai','linh'];
  for (var name in names){
    print(name);
  }


  //while
  var i = 1;
  while(i<=5){
    print(i);
    i++;
  }

  // do - while
  var x = 1;
  do{
    print(x);
    x++;
  }while(x<=5);

  //break, continue
  print("-------");
  x = 1;
  do{
    print(x);
    x++;
    if(x==3) break;
  }while(x<=5);
  print('----');
  x = 0;
  do{
    x++;
    if (x==3) continue;
    print(x);
  }while(x<=5);

}