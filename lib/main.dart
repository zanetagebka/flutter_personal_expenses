import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses App'),
        ),
        body: SingleChildScrollView(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Chart here'),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ])));
  }
}
