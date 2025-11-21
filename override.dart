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