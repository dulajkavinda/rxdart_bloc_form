import 'dart:async';
import 'validator.dart';

class Bloc with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // sinks
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // streams
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  void dispose() {
    _email.close();
    _password.close();
  }
}
