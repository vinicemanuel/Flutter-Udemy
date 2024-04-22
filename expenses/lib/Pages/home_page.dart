import 'package:expenses/Pages/Widgets/transaction_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            TransactionUser(),
          ],
        ));
  }
}
