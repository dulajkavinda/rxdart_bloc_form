import 'dart:async';
import 'validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  // sinks
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // streams
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);

  submit() {}

  void dispose() {
    _email.close();
    _password.close();
  }
}
