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

void main(List<String> args) {
  final now = DateTime.now();
  print(now);
  final berlinWallFell = DateTime.utc(1989, 11, 9);
  final moonLanding = DateTime.parse('1969-07-20 20:18:04Z'); // 8:18pm
  print('$berlinWallFell\n$moonLanding');

  print(berlinWallFell.year); // 1989
  print(berlinWallFell.month); // 11
  print(berlinWallFell.day); // 9
  print(moonLanding.hour); // 20
  print(moonLanding.minute); // 18

  final berlinWallFellMonth = DateTime.utc(1989, DateTime.november, 9);
  print(berlinWallFellMonth);
  print(berlinWallFellMonth.month);
  assert(berlinWallFell.month == DateTime.november);
  assert(berlinWallFell.weekday == DateTime.thursday);

  final dDay = DateTime.utc(1944, 6, 6);
  print(dDay.isUtc); // true
  final dDayLocal = DateTime(1944, 6, 6);
  print(dDayLocal.isUtc);
  
  final localDay = dDay.toLocal(); // e.g. 1944-06-06 02:00:00.000
  print(localDay.isUtc); // false

  final utcFromLocal = localDay.toUtc(); // 1944-06-06 00:00:00.000Z
  print(utcFromLocal.isUtc); // true

  print(dDay.timeZoneName); // UTC
  print(localDay.timeZoneName); // e.g. EET

  print(dDay.timeZoneOffset); // 0:00:00.000000
  print(localDay.timeZoneOffset); // e.g. 2:00:00.000000
  print(now.timeZoneOffset);

  print(berlinWallFell.isAfter(moonLanding)); // true
  print(berlinWallFell.isBefore(moonLanding)); // false
  print(dDay.isAtSameMomentAs(localDay)); // true

  final now_ = DateTime.now();
  final later_ = now.add(const Duration(hours: 36));

  print(now_);
  print(later_);

  final difference = berlinWallFell.difference(moonLanding);
  print(difference.inDays); // 7416
  // The difference between two dates in different time zones is just the number of nanoseconds between the 
  // two points in time. It doesn't take calendar days into account. That means that the difference between
  // two midnights in local time may be less than 24 hours times the number of days between them, if 
  // there is a daylight saving change in between.

  print(DateTime.timestamp());

  // Damn bro, I really tried to "Spacecraft firstSc = Spacecraft()" this thing first.
  // Java is a mind fungal infection.
  // var firstSc = Spacecraft("first spacecraft", DateTime.now());
  // var lastSc = Spacecraft(name, launchDate);
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  var voyager3 = Spacecraft.unlaunched('Voyager III');

  print('$voyager\n$voyager3');
  print('${voyager.toString()}\n${voyager3.toString()}');
  voyager.describe();
  voyager3.describe();

  final yourPlanet /*<3*/ = Planet.earth;
  if (!yourPlanet.isGiant) print('Your planet is not a "giant planet"~!');

  var leArbiter = Orbiter('Moon lololol', DateTime(10,2,28), 384400.00);
  print(leArbiter);
  leArbiter.describe();
  print(leArbiter.altitude);
}

enum PlanetType { terrestrial, gas, ice } // cannot be inside a function, i guess?

/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  const Planet({
    required this.planetType, required this.moons, required this.hasRings
  });

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  bool get isGiant => 
    planetType == PlanetType.gas || planetType == PlanetType.ice;
}

// Inheritance.... i heard evil things about it.
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

// mIXIIIIIInnss!!!!!!
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

//// adding a mixin capabilities to a classs!!
// class PilotedCraft extends Spacecraft with Piloted {
//   bweh
// }

// All classes implicitly define an interface!
// class MockSpaceShip implements Spacecraft {
//
// }

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('===========');
    describe();
    print('===========');
  }
}
