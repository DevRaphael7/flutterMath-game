import 'package:flutter/material.dart';
import 'package:math_game_flutter/widgets/Buttons.dart';
import 'widgets/Texts.dart';
import 'widgets/TextFields.dart';
import 'widgets/Functions.dart' as data;

class HomePage extends StatefulWidget{
  @override 
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  final TextEditingController input1 = new TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff8604f9),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MathGameTxt(),
            Spacer(),

            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6)
              ),
              width: 800,
              height: 100,
              child: TextField(
                controller: input1,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  hintText: "Seu nome",
                  hintStyle: TextStyle(color: Colors.indigo),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
              ) ,
              ),
            ),

            Spacer(),

            ButtonTheme(
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
                  if( data.passaParaProximaPagina(input1.text) ) {
                    data.passarParaOutraTela(context, "/quiz", input: input1.text);
                  }
                }
              ),
            )       
          ],
        ),
      ),
    );
  }
}