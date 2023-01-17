import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
    
    var _perguntaSelecionada = 0;

    //List<Map<String, Object>> 
      final _perguntas = const [
        {
          'texto':'Qual sua cor favorita?',
          'respostas':['Preto','Vermelho','Verde','Branco'],
        }, {
          'texto':'Qual seu animal favorito?',
          'respostas':['Coelho','Cobra','Elefante','Leão'],
        }, {
          'texto':'Qual o nome preferido?',
          'respostas':['João','Matheus','Carlos','Rodolfo'],
        } 
      ];

    void _responder() {
      if(temPerguntaSelecionada) {
        setState(() {
          _perguntaSelecionada++;
        });
      }
    }

    bool get temPerguntaSelecionada {
      return _perguntaSelecionada < _perguntas.length;
    }

    @override
    Widget build(BuildContext context) {

      

      return MaterialApp(

        home: Scaffold(

          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada 
            ? Questionario(perguntas: _perguntas, 
                           perguntaSelecionada: _perguntaSelecionada, 
                           quandoResponder: _responder) 
            : Resultado(),
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