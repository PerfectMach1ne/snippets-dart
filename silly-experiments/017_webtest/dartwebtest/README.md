## How I did it:

- `dart create -t web dartwebtest` Create a Dart web project template with broken minute zero-padding :3.

- `dart pub get webdev`

- `dart pub outdated` (bc some stuff was outdated like package:web)

- `dart pub upgrade --major-versions` (related to the above lol)

- `dart pub add build_runner build_web_compilers --dev` **IMPORTANT ONE!! Run here after everything before!**

- `dart pub global activate webdev` (might as well also do that thing at the very start if something won't work)

## Autogenerated Dart stuff

A bare-bones Dart web app.

Uses [`package:web`](https://pub.dev/packages/web)
to interop with JS and the DOM.

## Running and building

To run the app, use these commands:
```
dart pub global activate webdev
webdev serve
```

To build a production version ready for deployment, use these commands:
```
webdev build
```

For more details, see https://dart.dev/web/get-started
