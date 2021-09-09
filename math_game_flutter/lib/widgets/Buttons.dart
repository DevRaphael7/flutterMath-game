import 'package:flutter/material.dart';

class ButtonResposta extends StatelessWidget{
  
  String _textoDaResposta;

  @override
  Widget build(BuildContext context){
    return ButtonTheme(
      buttonColor: Colors.amber,
      child: RaisedButton(
        child: Text("Resposta"),
        onPressed: (){},
      ),
    );
  }
}