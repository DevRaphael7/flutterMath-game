import 'package:flutter/material.dart';
import 'widgets/Texts.dart';
import 'widgets/Buttons.dart';

class FimdeJogo extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Map data = ModalRoute.of(context).settings.arguments;

    int acertos = data["acertos"];
    String nomeDoJogador = data["nome"];

    return Scaffold(
      body: Container(
        color: Color(0xff8604f9),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DadosDoJogador(nomeDoJogador, acertos),
            HomePageButton(),
          ],
        ),
      ),
    );
  }
}