import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_game_flutter/class/Quiz.dart';
import 'widgets/Buttons.dart';

class QuizApp extends StatefulWidget{
  @override 
  State createState() => new QuizAppState(); 
}

class QuizAppState extends State<QuizApp>{
  int resposta1, resposta2, resposta3, resposta4, pergunta;


  @override 
  Widget build(BuildContext context){
    Random randomico = new Random();
    int number1 = randomico.nextInt(100), number2 = randomico.nextInt(100);
    MathGame jogoMath = new MathGame(randomico);
    
    pergunta = jogoMath.resposta;
    jogoMath.gerarRespostasePergunta(randomico, 100);

    resposta1 = jogoMath.resposta1;
    resposta2 = jogoMath.resposta2;
    resposta3 = jogoMath.resposta3;
    resposta4 = jogoMath.resposta4;
    
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$pergunta'),
            ButtonResposta(resposta1, jogoMath),
            ButtonResposta(resposta2, jogoMath),
            ButtonResposta(resposta3, jogoMath),
            ButtonResposta(resposta4, jogoMath),
          ],
        ),
      ),
    );
  }
}