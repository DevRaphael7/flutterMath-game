import 'dart:math';

class Quiz{
  int numero1;
  int numero2;
  int numeroAleatorio;
  Random rand;

  int gerarNumeroAleatorio(int number){
    numeroAleatorio = rand.nextInt(number);
    return this.numeroAleatorio;
  }

  void gerarRespostas( String resposta1, String resposta2, String resposta3, String resposta4) {
    if ( numeroAleatorio < 20 ) {
      resposta1 = rand.nextInt(30).toString();
      resposta2 = rand.nextInt(10).toString();
      resposta3 = rand.nextInt(80).toString();
      resposta4 = numeroAleatorio.toString();
    } else if ( numeroAleatorio >= 20 && numeroAleatorio < 40 ) {
      resposta1 = rand.nextInt(90).toString();
      resposta2 = numeroAleatorio.toString();
      resposta3 = rand.nextInt(40).toString();
      resposta4 = rand.nextInt(40).toString();
    } else if ( numeroAleatorio >= 40 && numeroAleatorio < 60 ) {
      resposta1 = rand.nextInt(90).toString();
      resposta2 = rand.nextInt(10).toString();
      resposta3 = numeroAleatorio.toString();
      resposta4 = rand.nextInt(60).toString();
    } else if ( numeroAleatorio >= 60 && numeroAleatorio < 80 ) {
      resposta1 = numeroAleatorio.toString();
      resposta2 = rand.nextInt(20).toString();
      resposta3 = rand.nextInt(40).toString();
      resposta4 = rand.nextInt(60).toString();
    } 
  } 

  bool acertouOuNao(String resposta){
    if (numeroAleatorio == int.tryParse(resposta)) return true;
    return false;
  }
}