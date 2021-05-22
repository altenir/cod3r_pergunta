import 'package:flutter/material.dart';
import 'package:perguntas/resposta.dart';
import './questao.dart';

main() => runApp(new PerguntaApp());

// #######################
// * ESTADO PRIVADO DO COMPONENTE
// #######################
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  // Método responder pergunta  no botão
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  // BUILD
  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
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
