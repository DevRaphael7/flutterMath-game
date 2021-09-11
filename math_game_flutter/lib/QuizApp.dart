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
    
    jogoMath.gerarRespostasePergunta(randomico, number1, number2);
    pergunta = jogoMath.resposta;

    resposta1 = jogoMath.resposta1;
    resposta2 = jogoMath.resposta2;
    resposta3 = jogoMath.resposta3;
    resposta4 = jogoMath.resposta4;
    
    void passarParaOutraTela(){
      if (acertos == null) acertos = 0;
      Navigator.pushReplacementNamed(context, "/endpage", arguments: { 
          "acertos" : acertos
      });
    }
    void fimDeJogo() {
      if (jogoMath.acabouOuNao(question, limite)) {
        Navigator.of(context).pushNamed("/endpage");
        passarParaOutraTela();
      }
    } 

    return Scaffold(
      backgroundColor: Color(0xff8604f9),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 500,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Question: $question/$limite', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
                  Padding(padding: const EdgeInsets.only( bottom: 5)),
                  Container(color: Colors.white, width: 500, height: 1,),
                  Padding(padding: const EdgeInsets.only( bottom: 5)),
                  Text('$number1 + $number2', style: TextStyle(fontSize: 50),),
                ],
              ),
            ),
            ButtonTheme(
              buttonColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              minWidth: 400,
              height: 50,
              child: RaisedButton(
                textColor: Color(0xff8604f9),
                child: Text(
                  "$resposta1"
                  ),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta1)) acertos++;
                    fimDeJogo();
                    question++;
                  });
                },
                ),
            ),
            ButtonTheme(
              buttonColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              minWidth: 400,
              height: 50,
              child: RaisedButton(
                textColor: Color(0xff8604f9),
                child: Text("$resposta2"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta2)) acertos++;
                    if (jogoMath.acabouOuNao(question, limite)) Navigator.of(context).pushNamed("/endpage");
                    question++;
                  });
                },
                ),
            ),
            ButtonTheme(
              buttonColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              minWidth: 400,
              height: 50,
              child: RaisedButton(
                textColor: Color(0xff8604f9),
                child: Text("$resposta3"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta3)) acertos++;
                    if (jogoMath.acabouOuNao(question, limite)) Navigator.of(context).pushNamed("/endpage");
                    question++;
                  });
                },
                ),
            ),
            ButtonTheme(
              buttonColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              minWidth: 400,
              height: 50,
              child: RaisedButton(
                textColor: Color(0xff8604f9),
                child: Text("$resposta4"),
                onPressed: () {
                  setState((){
                    if ( jogoMath.acertouOuNao(resposta4)) acertos++;
                    if (jogoMath.acabouOuNao(question, limite)) Navigator.of(context).pushNamed("/endpage");
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