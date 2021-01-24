import 'dart:async';

class Validators {
  final validateEmail = new StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.contains("@")) {
        sink.add(data);
      } else {
        sink.addError("Enter a valid emmail");
      }
    },
  );

  final validatePassword = new StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.length > 3) {
        sink.add(data);
      } else {
        sink.addError("Enter a valid password");
      }
    },
  );
}
