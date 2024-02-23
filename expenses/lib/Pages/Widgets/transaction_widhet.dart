import 'package:expenses/Models/dransaction.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            child: Text(transaction.value.toString()),
          ),
          Column(children: [
            Text(transaction.title),
            Text(transaction.date.toString())
          ],)
        ],
      ),
    );
  }
}
