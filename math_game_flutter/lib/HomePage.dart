import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override 
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  IconData icon = new IconData(3);

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
                onPressed: () {Navigator.of(context).pushNamed("/quiz");}
                ),
            ),
          ],
        ),
      ),
    );
  }
}