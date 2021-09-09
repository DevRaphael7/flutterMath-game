import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'QuizApp.dart';

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
      },
    );
  }
}