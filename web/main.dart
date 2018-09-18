@JS()
library example;

import 'dart:async';
import 'dart:html';

import 'package:js/js.dart';

Future main() async {
  final json = await HttpRequest.getString('big.json');

  final now = new DateTime.now();
  List<User> users = parse(json).cast<User>();
  print(DateTime.now().difference(now).inMilliseconds);

  document.body.addEventListener('click', (e){
    print(users);
  });


}

@JS('JSON.parse')
external dynamic parse(dynamic input);

@JS('JSON.stringify')
external dynamic stringify(dynamic input);

@JS()
class User {
  @JS()
  String firstName;
  @JS()
  String lastName;
}
