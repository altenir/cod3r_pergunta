import 'package:flutter/material.dart';
import 'package:perguntas/resposta.dart';
import './questao.dart';

main() => runApp(new PerguntaApp());

// #######################
// * ESTADO PRIVADO DO COMPONENTE
// #######################
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];

  // Método responder pergunta  no botão
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  // BUILD
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;
    // List<Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();
    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Center(
                child: Text(
                  'Parabéns!',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}

// ###################
// * COMPONENTE
// ###################
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
