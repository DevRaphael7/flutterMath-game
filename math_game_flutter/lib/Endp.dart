import 'package:flutter/material.dart';

class EndPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fim de jogo!"),
          ],
        ),
      ),
    );
  }
}