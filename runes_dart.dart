void main(){
  String str = 'hi';
  Runes runes1 = str.runes;

  Runes runes2 = Runes('\u2665'); // Unicode for '♥'

  Runes runes3 = Runes('\u{1F600}'); // Unicode for '😀'

  print(runes2);
  print(runes3);

  // cac phuong thuc va thuoc tinh
  // chuyen doi
  // tu runes qua string
  String heartSymbol = String.fromCharCodes(runes2);
  print(heartSymbol); // Output: ♥
  // tu unicode sang string
  String emoji = String.fromCharCode(0x1F600); // '😀'
  String symboil = String.fromCharCode(0x2665); // '♥'

  print(emoji);
  print(symboil);

  // xu ly
  print(runes1.length); // so luong unicode trong chuoi
  print(runes1.first); // lay unicode dau tien
  print(runes1.last); // lay unicode cuoi cung

  // duyet qua tung diem ma
  runes1 = "xin chao cac ban!, toi la dev flutter".runes;
  for (var rune in runes1) {
    print('unicode: $rune, character: ${String.fromCharCode(rune)}');
  }

  //kiem tra
  print(runes1.isEmpty);
  print(runes1.isNotEmpty);
  // xu ly emoji trong ung dung chat
  // hien thi ky tu dac biet
  // tao cac bieu tuong danh gia
  // xu ly van ban da ngon ngu co ky tu dac biet
}