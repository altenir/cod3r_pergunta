import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';
import 'package:perguntas/resposta.dart';

class Questioinario extends StatelessWidget {
  final List<Map> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questioinario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    var respostas = perguntas[perguntaSelecionada]['respostas'];

    // List<Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) => Resposta(
                  resp['texto'],
                  () => quandoResponder(resp['pontuacao']),
                ))
            .toList(),
      ],
    );
  }
}
