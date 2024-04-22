import 'package:expenses/Models/dransaction.dart';
import 'package:expenses/Pages/Widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return TransactionWidget(transaction: transactions[index]);
          },
          itemCount: transactions.length),
    );
  }
}
