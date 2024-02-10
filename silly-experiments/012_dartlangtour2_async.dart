import 'dart:io';

void main() {
  const oneSecond = Duration(seconds: 1);

  Future<void> printWithDelay(String message) async {
    await Future.delayed(oneSecond * 5);
    print(message);
  }

  printWithDelay("HELO!!!");

  // async written above (not the call) is equivalent to:
  Future<void> printWithDelay2(String message) {
    return Future.delayed(oneSecond * 7).then((_) {
      print(message);
    });
  }
  printWithDelay2("BYE!!!");

  // tl;dr async and await make it more readable. when in doubt, ask yourself what your "5h of Dart" self 
  // would make sense of that (_).

  Future<void> createDescription(Iterable<String> objects) async {
    for (final object in objects) {
      try {
        var file = File('$object.txt');
        if (await file.exists()) {
          var modified = await file.lastModified();
          print(
            'File for $object already exists. It was modified on $modified.'
          );
          continue;
        }
        await file.create();
        await file.writeAsString('Start describing $object in this file.');
      } on IOException catch (e) {
        print('Cannot create description for $object: $e');
      }
    }
  }  

  Iterable<String> iterOfStrs = ["  Future<void> createDescription(Iterable<String> objects) async {",
"    for (final object in objects) {",
"      try {",
"        var file = File('\$object.txt');",
"        if (await file.exists()) {",
"          var modified = await file.lastModified();",
"          print(",
"            'File for \$object already exists. It was modified on \$modified.';",
"          )",
"          continue;",
"        }",
"        await file.create();",
"        await file.writeAsString('Start describing \$object in this file.');",
"      } on IOException catch (e) {",
"        print('Cannot create description for \$object: \$e');",
"      }",
"    }",
"  }"""];
  createDescription(iterOfStrs);
}