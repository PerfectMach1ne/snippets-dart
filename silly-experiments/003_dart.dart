import 'dart:math';

main() {
  var add = 2+3;
  var minus = 2-3;
  var div = 3/2; // double
  var divinteger = 3~/2;
  var n = -add;
  print('$add $minus $div $divinteger $n');
  
  int a;
  int b;

  a = 0;
  b = ++a;
  assert(a == b); // 1 == 1

  a = 0;
  b = a++;
  assert(a != b); // 1 != 0

  a = 0;
  b = --a;
  assert(a == b); // -1 == 1

  a = 0;
  b = a--;
  assert(a != b); // -1 != 0
}