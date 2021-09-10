import 'package:flutter/material.dart';
import 'package:math_game_flutter/End.dart';
import 'HomePage.dart';
import 'QuizApp.dart';
import 'End.dart';

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
        '/endpage': (context) => FimdeJogo()
      },
    );
  }
}