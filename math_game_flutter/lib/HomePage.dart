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
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon( 
                  Icons.games,
                  size: 40.0,
                  color: Colors.black,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0)
                    ),
                  Text(
                    "Math Game!", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0
                    ),)
              ],
            ),
            Spacer(),
            ButtonTheme(
              buttonColor: Colors.amber,
              minWidth: 150,
              height: 50,
              child: 
              RaisedButton(
                child: Text(
                  "Jogar",
                  style: TextStyle(
                    color: Colors.blue,
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