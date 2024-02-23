import 'package:expenses/Models/dransaction.dart';
import 'package:expenses/Pages/Widgets/transaction_widhet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _transactions = [
    Transaction(
      id: "t1",
      title: "exemplo 1",
      value: 22,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "exemplo 2",
      value: 22,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Despesas Pessoais"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 5,
              color: Colors.blue,
              child: Text("grafico"),
            ),
            Column(
              children: _transactions.map((tr) {
                return TransactionWidget(transaction: tr);
              }).toList(),
            )
          ],
        ));
  }
}
