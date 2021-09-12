import 'package:flutter/material.dart';

void passarParaOutraTela(BuildContext context, String rota, {String input, int acertos}){
      if ( input == null) input = " ";
      if ( acertos == null) acertos = 0;
      Navigator.pushReplacementNamed(context, rota, arguments: { 
          "acertos" : acertos,
          "nome" : input
      });
}

bool passaParaProximaPagina(String texto){
    if(texto != "" && texto != " ") return true;
    return false;
}