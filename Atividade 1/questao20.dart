import 'dart:math';
void main(List<String> args) {
  
  Random random = new Random();

  var numeros = [];

  int numerosGerados = 0;
  while(numerosGerados < 5){
    int numero = random.nextInt(10000000);
    numeros.add(numero);
    numerosGerados++;
  }
}