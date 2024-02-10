// You can also use async*, which gives you a nice, readable way to build streams.

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Read-only non-final property
  Spacecraft(this.name, this.launchDate) {
    // initialize heree
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // method
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched.');
    }
  }
}

void main() {
  const oneSecond = Duration(seconds: 1);

  Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
    for (final object in objects) {
      await Future.delayed(oneSecond);
      yield '${craft.name} flies by $object';
    }
  }

  var voyager1 = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  var voyager2 = Spacecraft('Voyager II', DateTime(1976, 11, 15));
  var voyager3 = Spacecraft('Voyager III', DateTime(1987, 2, 10));
  print(report(voyager1, [voyager2.name, voyager3.name])); // ok i admit defeat to not knowing how to use this
  // one day I'll learn it, maybe.
}