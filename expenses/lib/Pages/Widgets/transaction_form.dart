import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key, required this.onSubmit});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

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
                    final title = titleController.text;
                    final valueText = valueController.text.replaceAll(',', '.');
                    final value = double.tryParse(valueText) ?? 0;
                    onSubmit(title, value);
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
