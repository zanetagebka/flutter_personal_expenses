import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    //
    // inside Container you can set up this single child scroll view and then create only-scrollable list or just use ListView.builder
    // like below. Lazy loading which is more performance
    //
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "PLN ${transactions[index].amount.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
                Text(
                  transactions[index].title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(DateFormat.yMMMEd().format(transactions[index].date),
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12))
              ])
            ]),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
