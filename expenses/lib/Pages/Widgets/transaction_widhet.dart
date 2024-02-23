import 'package:expenses/Models/dransaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          TransactionValue(
            value: transaction.value,
          ),
          TransactionInfos(
            transaction: transaction,
          )
        ],
      ),
    );
  }
}

class TransactionInfos extends StatelessWidget {
  const TransactionInfos({
    super.key,
    required this.transaction,
  });

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    var format = DateFormat("d MMM y");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transaction.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          format.format(transaction.date),
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        )
      ],
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
        color: Colors.purple,
        width: 2,
      )),
      padding: EdgeInsets.all(10),
      child: Text(
        "R\$ ${value.toStringAsFixed(2)}",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.purple,
        ),
      ),
    );
  }
}
