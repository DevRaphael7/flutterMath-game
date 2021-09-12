import 'package:flutter/material.dart';
import 'package:math_game_flutter/HomePage.dart';
import 'dart:math';
import 'package:math_game_flutter/class/Quiz.dart';
import 'Functions.dart';

class ButtonJogar extends StatelessWidget{

  String input1;
  BuildContext context;
  
  @override 
  Widget build(BuildContext context){
    return ButtonTheme(
              buttonColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              minWidth: 200,
              highlightColor: Color(0xFF8604f9),
              height: 50,
              child: RaisedButton(
                child: Text( "Jogar",
                  style: TextStyle(
                    color: Color(0xff8604f9),
                    fontWeight: FontWeight.bold,
                  ),),
                onPressed: () {
                  if( passaParaProximaPagina(input1) ) {
                    passarParaOutraTela(context, "/quiz", input: input1);
                  }
                }
              ),
            );
  }

  ButtonJogar(String input1){
    this.input1 = input1;
  }
}

class HomePageButton extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return ButtonTheme(
              buttonColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              minWidth: 300,
              highlightColor: Color(0xFF8604f9),
              height: 50,
              child: 
              RaisedButton(
                child: Text(
                  "Home Page",
                  style: TextStyle(
                    color: Color(0xff8604f9),
                    fontWeight: FontWeight.bold,
                  ),),
                onPressed: () {Navigator.of(context).pushNamed("/");}
                ),
            );
  }
}