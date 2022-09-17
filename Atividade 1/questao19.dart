import 'dart:io';
void main(List<String> args) {
  
  var numeros = [];

  int x = 0;

  while(x < 5){
    print("Digite um número inteiro:");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
    x++;
  }

  numeros.sort();

  print("O menor número é ${numeros.first} e o maior número é ${numeros.last}");
}