main() {
  int bread = 123;
  assert(bread is int);
  var whoknows;
  assert(whoknows is! int);
  whoknows = "bread123";
  print("$whoknows");

  var exp1;
  var exp2 = exp1 ?? 2+2 == 4;
  print(exp2);
  
  // assigns a value to a variable only if its current value is null
  exp1 ??= "cheesed hamburger";
  print("${exp1 ?? "this text will never print"}");
}