import 'package:flutter/material.dart';
import 'widgets/Buttons.dart';

class QuizApp extends StatefulWidget{
  @override 
  State createState() => new QuizAppState(); 
}

class QuizAppState extends State<QuizApp>{
  String pergunta = "---";

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$pergunta'),
            ButtonResposta(),
          ],
        ),
      ),
    );
  }
}