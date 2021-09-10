import 'package:flutter/material.dart';
import 'package:math_game_flutter/QuizApp.dart';

class FimdeJogo extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Map data = ModalRoute.of(context).settings.arguments;

    int acertos = data["acertos"];

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Você acertou: $acertos"),
          ],
        ),
      ),
    );
  }
}