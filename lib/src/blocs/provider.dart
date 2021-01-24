import 'dart:async';
import 'bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  Provider({Key key, this.child}) : super(key: key, child: child);

  final Widget child;

  static Provider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>();
  }

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}
