import 'dart:math';

class MathGame{
  int _numeroAleatorio1;
  int _numeroAleatorio2;
  int resposta;
  Random rand;
  int resposta1;
  int resposta2;
  int resposta3;
  int resposta4;

  void setNumeroAleatorio1(int _numeroAleatorio1) => this._numeroAleatorio1 = _numeroAleatorio1;
  void setNumeroAleatorio2(int _numeroAleatorio2) => this._numeroAleatorio2 = _numeroAleatorio2;

  void gerarRespostasePergunta(Random rand, int numero) {
    this.resposta = rand.nextInt(numero);
    if ( resposta < 20 ) {
      this.resposta1 = rand.nextInt(30);
      this.resposta2 = rand.nextInt(10);
      this.resposta3 = rand.nextInt(80);
      this.resposta4 = resposta;
    } else if ( resposta >= 20 && resposta < 40 ) {
      this.resposta1 = rand.nextInt(90);
      this.resposta2 = resposta;
      this.resposta3 = rand.nextInt(40);
      this.resposta4 = rand.nextInt(40);
    } else if ( resposta >= 40 && resposta < 60 ) {
      this.resposta1 = rand.nextInt(90);
      this.resposta2 = rand.nextInt(10);
      this.resposta3 = resposta;
      this.resposta4 = rand.nextInt(60);
    } else if ( resposta >= 60 && resposta < 80 ) {
      this.resposta1 = resposta;
      this.resposta2 = rand.nextInt(20);
      this.resposta3 = rand.nextInt(40);
      this.resposta4 = rand.nextInt(60);
    } 
  } 

  bool acertouOuNao(String resposta){
    if ( this.resposta == int.tryParse(resposta) ) return true;
    return false;
  }

  MathGame(Random rand){
    this.rand = rand;
    this._numeroAleatorio1 = 0;
    this._numeroAleatorio2 = 0;
    this.resposta = 0;
  }
}