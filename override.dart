class product{
  double price;
  int quantity;
  String name;

  product(this.price, this.quantity, this.name);
  void showTotal(){
    print ('total price is: ${price*quantity}');
  }
}

class table extends product{
  double width =0;
  double height=0;

  table(this.width, this.height, double price, int quatity, String name)
  : super(price, quatity, name); // gan thong tin tu lop cha vao lop con

  @override
  void showTotal() {
    print('name of table: $name');
    super.showTotal();
  }

}

void main(){
  product p = product(6000000, 1, 'phone'); // khai bao lop product (price, quantity, name)

  product p1 = table (7,6, 2000000, 1, 'ipad'); // khai bao lop table (width, height, price, quantity, name)
  p.showTotal();
  print('\n');
  p1.showTotal();
}