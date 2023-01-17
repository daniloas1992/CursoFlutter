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
          'respostas':[
            {'texto':'Preto', 'nota' : 10},
            {'texto':'Vermelho', 'nota' : 8},
            {'texto':'Verde', 'nota' : 3},
            {'texto':'Branco', 'nota' : 7}
          ],
        }, {
          'texto':'Qual seu animal favorito?',
          'respostas':[
            {'texto':'Coelho', 'nota' : 6},
            {'texto':'Cobra', 'nota' : 10},
            {'texto':'Elefante', 'nota' : 5},
            {'texto':'Leão', 'nota' : 4}
          ],
        }, {
          'texto':'Qual o nome preferido?',
          'respostas':[
            {'texto':'João', 'nota' : 2},
            {'texto':'Matheus', 'nota' : 4},
            {'texto':'Carlos', 'nota' : 7},
            {'texto':'Rodolfo', 'nota' : 6}
          ],
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