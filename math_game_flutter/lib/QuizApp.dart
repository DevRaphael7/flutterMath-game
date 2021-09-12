import 'dart:math';
import 'widgets/Functions.dart' as data;
import 'package:flutter/material.dart';
import 'package:math_game_flutter/class/Quiz.dart';
import 'widgets/Buttons.dart';
import 'widgets/Texts.dart';

class QuizApp extends StatefulWidget{
  @override 
  State createState() => new QuizAppState(); 
}

class QuizAppState extends State<QuizApp>{
  
  int resposta1, resposta2, resposta3, resposta4, pergunta, acertos = 0, question = 1, limite = 5;
  Random randomico = new Random();

  @override 
  Widget build(BuildContext context){

    Map dados = ModalRoute.of(context).settings.arguments;
    String nomeDoJogador = dados["nome"];

    int number1 = randomico.nextInt(50), number2 = randomico.nextInt(50);
    MathGame jogoMath = new MathGame(randomico);
    
    jogoMath.gerarRespostasePergunta(randomico, number1, number2);
    pergunta = jogoMath.resposta;

    resposta1 = jogoMath.resposta1;
    resposta2 = jogoMath.resposta2;
    resposta3 = jogoMath.resposta3;
    resposta4 = jogoMath.resposta4;

    return Scaffold(
      backgroundColor: Color(0xff8604f9),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextoQuestoes(question, limite, number1, number2),
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
                    if(jogoMath.acabouOuNao(question, limite)) data.passarParaOutraTela(context, "/endpage", acertos: acertos, input: nomeDoJogador);
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
                    if(jogoMath.acabouOuNao(question, limite)) data.passarParaOutraTela(context, "/endpage", acertos: acertos, input: nomeDoJogador);
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
                    if(jogoMath.acabouOuNao(question, limite)) data.passarParaOutraTela(context, "/endpage", acertos: acertos, input: nomeDoJogador);
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
                    if(jogoMath.acabouOuNao(question, limite)) data.passarParaOutraTela(context, "/endpage", acertos: acertos, input: nomeDoJogador);
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