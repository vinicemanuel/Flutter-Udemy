import 'package:expenses/Models/dransaction.dart';
import 'package:expenses/Pages/Widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        return TransactionWidget(transaction: tr);
      }).toList(),
    );
  }
}
