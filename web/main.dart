@JS()
library example;

import 'dart:html';
import 'package:js/js.dart';

void main() {
  String json = '[{"firstName": "Alexey", "lastName": "Zolotykh"}]';
  List<dynamic> users = parse(json);
  print((users.first as User).firstName);
  print(stringify(users));
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
