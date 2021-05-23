import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Insano';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 28),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: quandoReiniciarQuestionario,
            child: const Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
