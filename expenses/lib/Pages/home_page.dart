import 'package:expenses/Models/dransaction.dart';
import 'package:expenses/Pages/Widgets/transaction_widhet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(labelText: "Titulo"),
                    ),
                    TextField(
                      controller: valueController,
                      decoration: InputDecoration(labelText: "Valor (R \$)"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            debugPrint(
                                "${valueController.text} ${valueController.text}");
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.purple,
                            backgroundColor: Colors.green,
                          ),
                          child: Text("Nova transação"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
