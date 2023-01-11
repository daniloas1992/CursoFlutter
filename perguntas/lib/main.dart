import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  void responder() {
    print('Pergunta respondida #1!');
  }

  @override
  Widget build(BuildContext context) {

    var perguntaSelecionada = 0;

    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}