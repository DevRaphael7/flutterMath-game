import 'package:flutter/material.dart';
import 'package:math_game_flutter/HomePage.dart';
import 'dart:math';
import 'package:math_game_flutter/class/Quiz.dart';
import 'Functions.dart';

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