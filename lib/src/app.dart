import 'package:bloc_form/src/blocs/bloc.dart';
import 'package:bloc_form/src/home.dart';
import 'package:flutter/material.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      title: 'Form',
      home: Home(),
    ));
  }
}
