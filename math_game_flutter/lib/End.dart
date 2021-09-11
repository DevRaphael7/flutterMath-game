import 'package:flutter/material.dart';
import 'package:math_game_flutter/QuizApp.dart';

class FimdeJogo extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Map data = ModalRoute.of(context).settings.arguments;

    int acertos = data["acertos"];

    return Scaffold(
      body: Container(
        color: Color(0xff8604f9),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Você acertou: $acertos", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            ButtonTheme(
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
            ),
          ],
        ),
      ),
    );
  }
}