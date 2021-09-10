import 'dart:math';

class MathGame{
  int resposta;
  int resposta1;
  int resposta2;
  int resposta3;
  int resposta4;

  void gerarRespostasePergunta(Random rand, int numero1, int numero2){
    this.resposta = numero1 + numero2;
    if ( this.resposta < 20 ) {
      this.resposta1 = rand.nextInt(30);
      this.resposta2 = rand.nextInt(10);
      this.resposta3 = rand.nextInt(80);
      this.resposta4 = resposta;
    } else if ( this.resposta >= 20 && this.resposta < 40 ) {
      this.resposta1 = rand.nextInt(90);
      this.resposta2 = resposta;
      this.resposta3 = rand.nextInt(40);
      this.resposta4 = rand.nextInt(40);
    } else if ( this.resposta >= 40 && this.resposta < 60 ) {
      this.resposta1 = rand.nextInt(90);
      this.resposta2 = rand.nextInt(10);
      this.resposta3 = resposta;
      this.resposta4 = rand.nextInt(60);
    } else if ( this.resposta >= 60 && this.resposta < 80 ) {
      this.resposta1 = resposta;
      this.resposta2 = rand.nextInt(20);
      this.resposta3 = rand.nextInt(40);
      this.resposta4 = rand.nextInt(60);
    } else if ( this.resposta >= 80 && this.resposta < 100 ) {
      this.resposta1 = rand.nextInt(85);
      this.resposta2 = resposta;
      this.resposta3 = rand.nextInt(40);
      this.resposta4 = rand.nextInt(60);
    } 
  } 

  bool acertouOuNao(int resposta){
    if ( this.resposta == resposta ) return true;
    return false;
  }

  bool acabouOuNao(int question, int limite){
    if (question >= limite) return true;
    return false;
  }

  MathGame(Random rand){
    this.resposta = 0;
  }
}