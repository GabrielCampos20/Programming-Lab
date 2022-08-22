import 'dart:io';

class cliente{

  String nome;
  int idade;
  double saldo;

  cliente (this.nome, this.idade, this.saldo) {
    print("Qual o sue nome?");
    String? nome = stdin.readLineSync();
    print("Qual a sua idade?");
    String? idade = stdin.readLineSync();

    if (nome != null && idade != null){
      this.nome = nome;

    }

  }


}