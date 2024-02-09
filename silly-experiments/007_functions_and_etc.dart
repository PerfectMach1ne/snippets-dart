sayHello(String name, String additionalMessage) => "Hello $name. $additionalMessage";

sayBye(String name, [String ?additionalMessage]) => "Bye $name. $additionalMessage";

sayByeCorrected(String name, [String additionalMessage = "I am better off without you."]) => "Bye $name. $additionalMessage";

sayHello2(String name, {String ?additionalMessage}) => "Hello $name. $additionalMessage";

// sayHello3(String name, {@required String ?additionalMessage}) => "Hello $name. $additionalMessage";
// Ok, now THIS time book really did just lie to me.

main() {
  print(sayHello("Silv", "This is Vaivai; I soooo wonder if u know me."));
  print(sayBye("sadness"));
  print(sayByeCorrected("sadness"));
  print(sayHello2("Garfield"));
  print(sayHello2("Garfield", additionalMessage: "How are you?"));
  
  var list = [1, 2, 3, 4];
  list.forEach((number) => print('helo $number'));
  // Update regarding previous file: THIS is a lambda, not what I called a "lambda" in the previous functions.
  // Lambdas are also what happens to be known as "closures".
}