import 'package:flutter/material.dart';
import './blocs/bloc.dart';

class Home extends StatelessWidget {
  final bloc = Bloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BLOC Forms '),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            buildEmailField(),
            buildPasswordField(),
            Container(
              margin: EdgeInsets.only(top: 10.0),
            ),
            buildSubmitButton()
          ],
        ),
      ),
    );
  }

  RaisedButton buildSubmitButton() => RaisedButton(
        onPressed: () {},
        color: Colors.blue,
        child: Text(
          'Submit',
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget buildPasswordField() {
    return StreamBuilder<Object>(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Enter your password', errorText: snapshot.error),
            onChanged: (value) => bloc.changePassword(value),
          );
        });
  }

  Widget buildEmailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'Enter your email', errorText: snapshot.error),
          );
        });
  }
}
