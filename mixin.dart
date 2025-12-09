// Mixin trong Dart - Ví dụ đơn giản

// Định nghĩa Mixin 1: Có khả năng bay
mixin Flying {
  void fly() {
    print('Tôi đang bay...');
  }
}

// Định nghĩa Mixin 2: Có khả năng bơi
mixin Swimming {
  void swim() {
    print('Tôi đang bơi...');
  }
}

// Định nghĩa Mixin 3: Có khả năng chạy
mixin Running {
  void run() {
    print('Tôi đang chạy...');
  }
}

// Lớp cơ bản
class Animal {
  String name;

  Animal(this.name);

  void display() {
    print('Tôi là: $name');
  }
}

// Lớp chim (kết hợp Animal với Flying mixin)
class Bird extends Animal with Flying {
  Bird(String name) : super(name);
}

// Lớp cá (kết hợp Animal với Swimming mixin)
class Fish extends Animal with Swimming {
  Fish(String name) : super(name);
}

// Lớp vịt (kết hợp Animal với Flying và Swimming mixin)
class Duck extends Animal with Flying, Swimming {
  Duck(String name) : super(name);
}

// Lớp chó (kết hợp Animal với Running mixin)
class Dog extends Animal with Running {
  Dog(String name) : super(name);
}

// Lớp chim cánh cụt (kết hợp Animal với Swimming và Running mixin)
class Penguin extends Animal with Swimming, Running {
  Penguin(String name) : super(name);
}

void main() {
  // Tạo các đối tượng
  print('=== VÍ DỤ VỀ MIXIN TRONG DART ===\n');

  var chim = Bird('Chim sẻ');
  chim.display();
  chim.fly();
  print('');

  var ca = Fish('Cá vàng');
  ca.display();
  ca.swim();
  print('');

  var vit = Duck('Vịt');
  vit.display();
  vit.fly();
  vit.swim();
  print('');

  var cho = Dog('Chó');
  cho.display();
  cho.run();
  print('');

  var chim_canh_cut = Penguin('Chim cánh cụt');
  chim_canh_cut.display();
  chim_canh_cut.swim();
  chim_canh_cut.run();
}
