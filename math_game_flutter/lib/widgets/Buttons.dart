import 'package:flutter/material.dart';
import 'dart:math';
import 'package:math_game_flutter/class/Quiz.dart';

class ButtonResposta extends StatelessWidget{
  
  int _textoDaResposta;
  MathGame game;
  int acertos;
  Random rand;

  void acertouOuNao(int acertos){
    if(this.game.acertouOuNao(this._textoDaResposta)) acertos++;
  }
  @override
  Widget build(BuildContext context){
    return ButtonTheme(
      buttonColor: Colors.amber,
      child: RaisedButton(
        child: Text("$_textoDaResposta"),
        onPressed: () {},
      ),
    );
  }

  ButtonResposta(int _textoDaResposta, MathGame game, Random rand, int acertos){
    this._textoDaResposta = _textoDaResposta;
    this.game = game;
    this.rand = rand;
    this.acertos = acertos;
    this.acertouOuNao(acertos);
  }
}