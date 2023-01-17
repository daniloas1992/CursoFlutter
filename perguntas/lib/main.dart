import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
    
    var _perguntaSelecionada = 0;
    var _pontuacaoTotal = 0;

    //List<Map<String, Object>> 
      final _perguntas = const [
        {
          'texto':'Qual sua cor favorita?',
          'respostas':[
            {'texto':'Preto', 'pontuacao' : 10},
            {'texto':'Vermelho', 'pontuacao' : 8},
            {'texto':'Verde', 'pontuacao' : 3},
            {'texto':'Branco', 'pontuacao' : 7}
          ],
        }, {
          'texto':'Qual seu animal favorito?',
          'respostas':[
            {'texto':'Coelho', 'pontuacao' : 6},
            {'texto':'Cobra', 'pontuacao' : 10},
            {'texto':'Elefante', 'pontuacao' : 5},
            {'texto':'Leão', 'pontuacao' : 4}
          ],
        }, {
          'texto':'Qual o nome preferido?',
          'respostas':[
            {'texto':'João', 'pontuacao' : 2},
            {'texto':'Matheus', 'pontuacao' : 4},
            {'texto':'Carlos', 'pontuacao' : 7},
            {'texto':'Rodolfo', 'pontuacao' : 6}
          ],
        } 
      ];

    void _responder(int pontuacao) {
      if(temPerguntaSelecionada) {
        setState(() {
          _perguntaSelecionada++;
          _pontuacaoTotal += pontuacao;
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