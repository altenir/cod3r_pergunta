import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  // Construtor
  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(texto),
        onPressed: null,
      ),
    );
  }
}
