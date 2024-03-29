import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
