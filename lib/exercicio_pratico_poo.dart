class Carro{
  String modelo;
  double velocidade_atual;
  double velocidade_max;

  Carro(this.modelo, this.velocidade_atual, this.velocidade_max);


void acelerar(double qtd){
  velocidade_atual += qtd;

  if (velocidade_atual > velocidade_max) {
    velocidade_atual = velocidade_max;
    print("Velocidade máxima atingida!");

  }
}

void frear(double qtd){
  velocidade_atual -= qtd;

  if (velocidade_atual < 0){
    velocidade_atual = 0;
    print("O carro já está parado");
  }
}

void desligar(){
  velocidade_atual = 0;
  print("Carro desligado. Velocidade zerada");
}

void exibirEstado(){
  print(
    "Carro: $modelo | Velocidade atual: "
    "${velocidade_atual.toStringAsFixed(0)} km/h | "
    "Velocidade máxima: "
    "${velocidade_max.toStringAsFixed(0)} km/h"
   );
 }
}

void main(){
Carro carro = Carro("Fusca",0,120);

//acelerar
carro.acelerar(50);
carro.acelerar(80);

//exibe estado
carro.exibirEstado();

//freia o carro
carro.frear(30);
carro.frear(70);
carro.frear(50);

carro.exibirEstado();

carro.acelerar(100);

// desçiga o carro
carro.desligar();

carro.exibirEstado();



}
