import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main() {
  runApp(PerguntasApp());
}

class _PerguntasApp extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _pergunas = const [
    {
      "texto": "pergunta 1?",
      "Respostas": [
        {"texto": "Resposta 1", "pontuacao": 1},
        {"texto": "Resposta 1", "pontuacao": 2},
        {"texto": "Resposta 1", "pontuacao": 3},
      ]
    },
    {
      "texto": "pergunta 2?",
      "Respostas": [
        {"texto": "Resposta 1", "pontuacao": 1},
        {"texto": "Resposta 1", "pontuacao": 2},
        {"texto": "Resposta 1", "pontuacao": 3},
      ]
    },
    {
      "texto": "pergunta 3?",
      "Respostas": [
        {"texto": "Resposta 1", "pontuacao": 1},
        {"texto": "Resposta 1", "pontuacao": 2},
        {"texto": "Resposta 1", "pontuacao": 3},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntasSelecioandas) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _restart() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntasSelecioandas {
    return _perguntaSelecionada < _pergunas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: temPerguntasSelecioandas
          ? Questionario(
              perguntaSelecionada: _perguntaSelecionada,
              pergunas: _pergunas,
              responder: _responder)
          : Resultado(
              pontuacao: _pontuacaoTotal,
              restart: _restart,
            ),
    ));
  }
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PerguntasApp();
  }
}
