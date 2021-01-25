import 'bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  Provider({Key key, this.child}) : super(key: key, child: child);

  final Widget child;

  final bloc = Bloc();

  static Bloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().bloc;
  }

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}
