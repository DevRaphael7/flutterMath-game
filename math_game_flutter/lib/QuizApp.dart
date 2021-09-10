import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_game_flutter/class/Quiz.dart';
import 'widgets/Buttons.dart';

class QuizApp extends StatefulWidget{
  @override 
  State createState() => new QuizAppState(); 
}

class QuizAppState extends State<QuizApp>{
  int resposta1, resposta2, resposta3, resposta4, pergunta, acertos = 0, question = 0, limite = 5;

  Random randomico = new Random();
    

  @override 
  Widget build(BuildContext context){
    int number1 = randomico.nextInt(50), number2 = randomico.nextInt(50);
    MathGame jogoMath = new MathGame(randomico);
    
    jogoMath.gerarRespostasePergunta(randomico, 100, number1, number2);
    pergunta = jogoMath.resposta;

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
            Text('$question/$limite'),
            Text('$number1 + $number2'),
            ButtonTheme(
              buttonColor: Colors.amber,
              child: RaisedButton(
                child: Text("$resposta1"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta1)) acertos++;
                    if (jogoMath.acabouOuNao(question, limite)) Navigator.of(context).pushNamed("/quiz");
                    question++;
                  });
                },
                ),
            ),
            ButtonTheme(
              buttonColor: Colors.amber,
              child: RaisedButton(
                child: Text("$resposta2"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta2)) acertos++;
                    question++;
                  });
                },
                ),
            ),
            ButtonTheme(
              buttonColor: Colors.amber,
              child: RaisedButton(
                child: Text("$resposta3"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta3)) acertos++;
                    question++;
                  });
                },
                ),
            ),
            ButtonTheme(
              buttonColor: Colors.amber,
              child: RaisedButton(
                child: Text("$resposta4"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta4)) acertos++;
                    question++;
                  });
                },
                ),
            ),
          ],
        ),
      ),
    );
  }
}