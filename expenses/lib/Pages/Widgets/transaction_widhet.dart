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
          TransactionValue(value: transaction.value),
          Column(
            children: [
              Text(transaction.title),
              Text(transaction.date.toString())
            ],
          )
        ],
      ),
    );
  }
}

class TransactionValue extends StatelessWidget {
  const TransactionValue({
    super.key,
    required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.purple.shade50,
        width: 2,
      )),
      padding: EdgeInsets.all(10),
      child: Text(
        value.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.purple,
        ),
      ),
    );
  }
}
