import 'package:flutter/material.dart';
import 'package:math_game_flutter/class/Quiz.dart';

class ButtonResposta extends StatelessWidget{
  
  int _textoDaResposta;
  MathGame game;

  @override
  Widget build(BuildContext context){
    return ButtonTheme(
      buttonColor: Colors.amber,
      child: RaisedButton(
        child: Text("$_textoDaResposta"),
        onPressed: (){

        },
      ),
    );
  }

  ButtonResposta(int _textoDaResposta, MathGame game){
    this._textoDaResposta = _textoDaResposta;
    this.game = game;
  }
}