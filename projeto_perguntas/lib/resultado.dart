import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() restart;
  const Resultado({
    super.key,
    required this.pontuacao,
    required this.restart
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Center(
              child: Text(
              "Parabéns $pontuacao pontos",
              style: TextStyle(fontSize: 28),
            )),
        ),
          ElevatedButton(onPressed: restart, child: const Text("Recomeçar"))
      ],
    );
  }
}