void main(List<String> args) { // VS Code plugin generated this sweetie. interesting.
  List<void> bread = [];

  print(bread);
  print(bread.toString());

  // Generics
  List avengerNames = ["Iron", "Man"];
  avengerNames.add(57);

  print("Avenger names: $avengerNames");

  List<String> _avengerNames = ["Iron", "Man"];
  print("Avenger names: $_avengerNames");

  var aveng = <String>["Iron", "Man", "2"];
  aveng.forEach((el) {print(el);});
  var avengQuotes = <String, String>{
    "Iron": "I",
    "Man": "am",
    "2": "Ironman. Did you know that even with seatbelts on, people die all the time in car crashes? I thought that was interesting"
  };

  var enmptyStringArray/*:3*/ = <String>[];
  print(enmptyStringArray);
}