import 'dart:math';

import 'package:expenses/Models/dransaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions = [
    Transaction(
      id: "t1",
      title: "exemplo 1",
      value: 22,
      date: DateTime.now(),
    )
  ];

  _newTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(onSubmit: _newTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
