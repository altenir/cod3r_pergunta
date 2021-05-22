import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  // Construtor
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 18, color: Colors.blue),
    );

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: style,
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
