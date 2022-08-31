import 'dart:io';

class Cliente{

  late String nome;
  late double saldo = 0;
  late int cpf;

  void criarConta(){
    print("Qual o seu nome");
    String? nome = stdin.readLineSync();
    print("Qual a sua idade?");
    String? idade = stdin.readLineSync();
    print("Qual o seu cpf?");
    String? cpf = stdin.readLineSync();

    if (nome != null && idade != null && cpf != null){
      int idadeC = int.parse(idade);
      int cpfC = int.parse(cpf);
      if (idadeC >= 18){
        print("Conta criada com sucesso! Seja bem vindo $nome");
        this.nome = nome;
        this.cpf = cpfC;
      }else{
        print("Erro, tente novamente!");
      }
    }else if(nome == "" || idade == null || cpf == null){
      print("Erro, vc é um fracasso como programador.");
    }
  }


}




