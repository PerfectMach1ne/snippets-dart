import 'dart:io';

void main() {
  Future<void> describeFlybyObjects(List<String> flybyObjects) async {
    try {
      for (final object in flybyObjects) {
        var description = await File('$object.txt').readAsString();
        print(description);
      }
    } on IOException catch (e) {
      print('Could not describe object: $e');
    } finally {
      flybyObjects.clear();
    }
  }

  describeFlybyObjects([
    "          continue;",
    "  }",
    "        await file.writeAsString('Start describing \$object in this file.');"]);
}