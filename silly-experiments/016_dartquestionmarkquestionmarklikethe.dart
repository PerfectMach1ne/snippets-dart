void main(List<String> args) {
  const cuddlingWithBea = "dart? like dart monkey from bloons tower defense";

  for (int i = 0; i < 6; i++) {
    print("$cuddlingWithBea${i != 5 ? ' ${6 - i}' : ''}?");
  }
}