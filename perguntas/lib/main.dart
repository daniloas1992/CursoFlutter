import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
    
    var _perguntaSelecionada = 0;

    void _responder() {
      
      setState(() {
        _perguntaSelecionada++;
      });
    }

    @override
    Widget build(BuildContext context) {

      //List<Map<String, Object>> 
      final perguntas = [
        {
          'texto':'Qual sua cor favorita?',
          'repostas':['Preto','Vermelho','Verde','Branco'],
        }, {
          'texto':'Qual seu animal favorito?',
          'respostas':['Coelho','Cobra','Elefante','Leão'],
        }, {
          'texto':'Qual o nome preferido?',
          'respostas':['João','Matheus','Carlos','Rodolfo'],
        } 
      ];

      return MaterialApp(

        home: Scaffold(

          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
              Resposta('Resposta 1', _responder),
              Resposta('Resposta 2', _responder),
              Resposta('Resposta 3', _responder),
            ],
          ),
        ),
      );
    }
}

class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }

}