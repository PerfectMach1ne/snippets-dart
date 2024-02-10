int fibonacci(int n) {
  if (n == 0 || n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  // oh, you can do this?
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  
  print(image.toString());
  print(image);

  testFunc();

  var fiboPlaything = fibonacci(21);
  print('$fiboPlaything');
  
  String fibo = '';
  for (int i = 0; i <= 25; i++) fibo += i < 25 ? "${fibonacci(i)} " : "${fibonacci(i)}";
  print(fibo);

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

void testFunc() {
  print("wiiiilll iiiit reeeeach thiiiisss?"); // yes
}