import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override 
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  IconData icon = new IconData(3);
  final TextEditingController input1 = TextEditingController();

  void passarParaOutraTela(){
      Navigator.pushReplacementNamed(context, "/quiz", arguments: { 
          "nome" : input1.text
      });
    }

  bool passaParaProximaPagina(String texto){
    if(texto != "" && texto != " ") return true;
    return false;
  }

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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              width: 800,
              height: 150,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0)
                    ),
                  Icon(
                    Icons.games,
                    size: 40,
                    color: Color(0xff8604f9),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 20)),
                  Text(
                    "MathGame", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8604f9),
                      fontSize: 40.0,
                    ),)
              ],
            ),
            ),
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
              child: 
              RaisedButton(
                child: Text(
                  "Jogar",
                  style: TextStyle(
                    color: Color(0xff8604f9),
                    fontWeight: FontWeight.bold,
                  ),),
                onPressed: () { 
                  if(passaParaProximaPagina(input1.text)) passarParaOutraTela();
                }
                ),
            ),
          ],
        ),
      ),
    );
  }
}