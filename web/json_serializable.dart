import 'dart:async' show Future;
import 'dart:convert';
import 'dart:html';
import 'dart:html';
import 'package:json_ser/user.dart';

Future main() async {
  final input = await HttpRequest.getString('big.json');

  final now = new DateTime.now();
  final Iterable<User> users = jsonDecode(input).map<User>((i) => new User.fromJson(i));
  print(new DateTime.now().difference(now).inMilliseconds);

  document.body.addEventListener('click', (e){
    print(users);
  });

}
