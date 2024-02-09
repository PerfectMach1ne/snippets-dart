import 'dart:math';

main() {
  final value = 1;
  const list = [1, 2, 3];
  const point = Point(2, 3);  

  print(value + list[1] == list[2]);
  print(point.toString());

  List<int> meFirstList = [1,2,3,4,5];
  for (var i = 0; i < meFirstList.length; i++) {
    print('${meFirstList[i]}');
  }

  Map<dynamic,dynamic> maphehe = {
    "bread": 3.99,
    "cheeseburger": 5.00,
    "40min ticket": 2.40,
    "15min ticket": 1.40,
    "a piece of paper from the worst doctor ever": 200.00
  };

  print('The cost of ${maphehe.keys.last} = ${maphehe["a piece of paper from the worst doctor ever"]}');


  String baza = 'I love girls';
  print(baza * 57);
  // Map<,> willItInfer = {};

  String someString = "This is a String";
  print("The string value is $someString");
  print("The length of the string is ${someString.length}");
}