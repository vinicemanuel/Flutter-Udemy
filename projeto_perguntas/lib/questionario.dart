import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> pergunas;
  final void Function(int) responder;

  const Questionario(
      {super.key,
      required this.perguntaSelecionada,
      required this.pergunas,
      required this.responder});

  bool get temPerguntasSelecioandas {
    return perguntaSelecionada < pergunas.length;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> listaRespostas = temPerguntasSelecioandas
        ? pergunas[perguntaSelecionada]["Respostas"]
            as List<Map<String, Object>>
        : [];

    List<Widget> respostas = listaRespostas
        .map((resp) =>
            Resposta(texto: resp["texto"].toString(), onSelect: (){
              var value = int.parse(resp["pontuacao"].toString());
              responder(value);
            }))
        .toList();

    return Column(
      children: [
        Questao(texto: pergunas[perguntaSelecionada]["texto"].toString()),
        ...respostas,
      ],
    );
  }
}
