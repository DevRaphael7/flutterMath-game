import 'package:flutter/material.dart';
import 'package:math_game_flutter/Endp.dart';
import 'HomePage.dart';
import 'QuizApp.dart';
import 'Endp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( brightness: Brightness.dark ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/quiz': (context) => QuizApp(),
        '/endpage': (context) => EndPage()
      },
    );
  }
}