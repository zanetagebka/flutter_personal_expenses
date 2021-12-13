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
            elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: ListTile(
                leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: FittedBox(
                          child: Text('PLN ${transactions[index].amount}')),
                    )),
                title: Text(
                  transactions[index].title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle:
                    Text(DateFormat.yMMMd().format(transactions[index].date)),
              ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}
