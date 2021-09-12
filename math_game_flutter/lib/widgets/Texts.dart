import 'package:flutter/material.dart';

class MathGameTxt extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white
              ),
              width: 800,
              height: 150,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0)
                    ),
                  Icon(
                    Icons.games,
                    size: 40,
                    color: Color(0xff8604f9),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 20)),
                  Text(
                    "MathGame", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8604f9),
                      fontSize: 40.0,
                    ),
                  )
              ],
            ),
      );
  }
}

class TextoQuestoes extends StatelessWidget{

  int question;
  int limite;
  int number1;
  int number2;

  @override 
  Widget build(BuildContext context){
    return Container(
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
            );
  }

  TextoQuestoes(int question, int limite, int number1, int number2){
    this.question = question;
    this.limite = limite;
    this.number1 = number1;
    this.number2 = number2;
  }
}

class DadosDoJogador extends StatelessWidget{

  String nomeDoJogador;
  int acertos;

  @override 
  Widget build(BuildContext context){
    return Text("$nomeDoJogador\nacertou: $acertos", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,);
  }

  DadosDoJogador(String nomeDoJogador, int acertos){
    this.nomeDoJogador = nomeDoJogador;
    this.acertos = acertos;
  }
}