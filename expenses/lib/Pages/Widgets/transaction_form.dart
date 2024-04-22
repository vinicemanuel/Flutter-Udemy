import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key, required this.onSubmit});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  _submitForm() {
    final title = titleController.text;
    final valueText = valueController.text.replaceAll(',', '.');
    final value = double.tryParse(valueText) ?? 0;

    if (title.isNotEmpty && value > 0) {
      onSubmit(title, value);
    }
  }

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
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _submitForm,
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
