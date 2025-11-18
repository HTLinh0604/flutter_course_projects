void main(){
  int x= 10;
  if (x is! int){
    print('day la ko 1 so');
  }else if (x%2==0){
    print('so chan');
  }else{
    print('so le');
  }

  int thang = 8;
  switch(thang){
    case 2:
      print('thang $thang co 28 hoac 29 ngay');
      break;
    case 1: 
    case 3:
    case 5:

    print('THANG $thang co 31 ngay');
    break;
    case 4:
    case 6:
    case 9:
    case 11:
      print('thang $thang co 30 ngay');
      break;
    default:
      print('thang $thang ko xac dinh');
  }


}