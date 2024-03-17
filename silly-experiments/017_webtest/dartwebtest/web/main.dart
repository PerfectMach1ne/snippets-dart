// import 'package:web/helpers.dart';
import 'package:web/web.dart';

void main() {
  final now = DateTime.now();
  final element = document.querySelector('#output') as HTMLDivElement;
  element.text = 'The time is ${now.hour}:${'${now.minute}'.padLeft(2,'0')} and your Dart web app is running!';
}
