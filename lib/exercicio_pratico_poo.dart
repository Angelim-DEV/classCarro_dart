class Carro{
  String modelo = "Ferrari 296 GTB";
  double velocidade_atual;
  double velocidade_max;

  Carro(this.modelo, this.velocidade_atual, this.velocidade_max);
}

void acelerar(double qtd){
  velocidade_atual += qtd;

  if (velocidade_atual > velocidade_max) {
    velocidade_atual = velocidade_max;
    print("Velocidade atual atingida!");

  }
}

