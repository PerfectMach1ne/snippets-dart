import 'dart:mirrors';

String sayHelo() {
  return "Heloooooo world";
}

main() {
  String multiline = """This is a 
  multiline
  stringyyy.""";
  print(multiline);
  String cooler_multiline = """This is a
much better
multiline stroing!""";
  print(cooler_multiline);

  var someInt = 1;
  print(reflect(someInt).type.reflectedType.toString()); // -> int

  var a; // not initialized -> type is dynamic
  
  a = 1;
  print(a is String);
  print(a is dynamic);
  print(a.runtimeType);
  a = "a";
  print(a is int);
  print(a is String);
  print(a is dynamic);
  print(a.runtimeType);
  
  print('-' * 25);
  int b = 1;
  print(b.runtimeType); // int
  var c = 1;
  print(a is int); // false
  print(a is dynamic); // true
  var d;
  print(a is dynamic); // true
  d = 1;
  print(d.runtimeType); // int

  // I hope nobody ever reads this
  print("""Girls, are you mobile devs?
  \n...cause one of you shot a Dart through my heart~~
  \n...and it made my heart Flutter for another~~""");

  var assignFuncToVar = sayHelo;
  print(assignFuncToVar());

  print("i wonder why this won't work: " + sayHelo());

  print("what");
  print("nvm my :w didn't work LMAO");

  sayHello() {
    return "no, bye";
  }

  print("Um, hello?\n${sayHello()}");

  theEpicLambdaTime() => "LET'S GOOOOO";

  print("${theEpicLambdaTime()}!!!!\nWhat, where?");

  lambdaTwo() => 2+2 == 4 ? "2+2=4!" : "huh...";

  print(lambdaTwo());
  print(2+2 != 4 ? "2+2=4!" : "huh...");
}